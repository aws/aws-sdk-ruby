# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Redshift
  module Types

    # @note When making an API call, you may pass AcceptReservedNodeExchangeInputMessage
    #   data as a hash:
    #
    #       {
    #         reserved_node_id: "String", # required
    #         target_reserved_node_offering_id: "String", # required
    #       }
    #
    # @!attribute [rw] reserved_node_id
    #   A string representing the node identifier of the DC1 Reserved Node
    #   to be exchanged.
    #   @return [String]
    #
    # @!attribute [rw] target_reserved_node_offering_id
    #   The unique identifier of the DC2 Reserved Node offering to be used
    #   for the exchange. You can obtain the value for the parameter by
    #   calling GetReservedNodeExchangeOfferings
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AcceptReservedNodeExchangeInputMessage AWS API Documentation
    #
    class AcceptReservedNodeExchangeInputMessage < Struct.new(
      :reserved_node_id,
      :target_reserved_node_offering_id)
      include Aws::Structure
    end

    # @!attribute [rw] exchanged_reserved_node
    #   Describes a reserved node. You can call the
    #   DescribeReservedNodeOfferings API to obtain the available reserved
    #   node offerings.
    #   @return [Types::ReservedNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AcceptReservedNodeExchangeOutputMessage AWS API Documentation
    #
    class AcceptReservedNodeExchangeOutputMessage < Struct.new(
      :exchanged_reserved_node)
      include Aws::Structure
    end

    # Describes an AWS customer account authorized to restore a snapshot.
    #
    # @!attribute [rw] account_id
    #   The identifier of an AWS customer account authorized to restore a
    #   snapshot.
    #   @return [String]
    #
    # @!attribute [rw] account_alias
    #   The identifier of an AWS support account authorized to restore a
    #   snapshot. For AWS support, the identifier is
    #   `amazon-redshift-support`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AccountWithRestoreAccess AWS API Documentation
    #
    class AccountWithRestoreAccess < Struct.new(
      :account_id,
      :account_alias)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AuthorizeClusterSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "String", # required
    #         cidrip: "String",
    #         ec2_security_group_name: "String",
    #         ec2_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the security group to which the ingress rule is added.
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   The IP range to be added the Amazon Redshift security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The EC2 security group to be added the Amazon Redshift security
    #   group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS account number of the owner of the security group specified
    #   by the *EC2SecurityGroupName* parameter. The AWS Access Key ID is
    #   not an acceptable value.
    #
    #   Example: `111122223333`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeClusterSecurityGroupIngressMessage AWS API Documentation
    #
    class AuthorizeClusterSecurityGroupIngressMessage < Struct.new(
      :cluster_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_security_group
    #   Describes a security group.
    #   @return [Types::ClusterSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeClusterSecurityGroupIngressResult AWS API Documentation
    #
    class AuthorizeClusterSecurityGroupIngressResult < Struct.new(
      :cluster_security_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass AuthorizeSnapshotAccessMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String",
    #         account_with_restore_access: "String", # required
    #       }
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier of the snapshot the account is authorized to restore.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_cluster_identifier
    #   The identifier of the cluster the snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #   @return [String]
    #
    # @!attribute [rw] account_with_restore_access
    #   The identifier of the AWS customer account authorized to restore the
    #   specified snapshot.
    #
    #   To share a snapshot with AWS support, specify
    #   amazon-redshift-support.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeSnapshotAccessMessage AWS API Documentation
    #
    class AuthorizeSnapshotAccessMessage < Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :account_with_restore_access)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Describes a snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AuthorizeSnapshotAccessResult AWS API Documentation
    #
    class AuthorizeSnapshotAccessResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # Describes an availability zone.
    #
    # @!attribute [rw] name
    #   The name of the availability zone.
    #   @return [String]
    #
    # @!attribute [rw] supported_platforms
    #   @return [Array<Types::SupportedPlatform>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/AvailabilityZone AWS API Documentation
    #
    class AvailabilityZone < Struct.new(
      :name,
      :supported_platforms)
      include Aws::Structure
    end

    # Describes a cluster.
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_status
    #   The current state of the cluster. Possible values are the following:
    #
    #   * `available`
    #
    #   * `creating`
    #
    #   * `deleting`
    #
    #   * `final-snapshot`
    #
    #   * `hardware-failure`
    #
    #   * `incompatible-hsm`
    #
    #   * `incompatible-network`
    #
    #   * `incompatible-parameters`
    #
    #   * `incompatible-restore`
    #
    #   * `modifying`
    #
    #   * `rebooting`
    #
    #   * `renaming`
    #
    #   * `resizing`
    #
    #   * `rotating-keys`
    #
    #   * `storage-full`
    #
    #   * `updating-hsm`
    #   @return [String]
    #
    # @!attribute [rw] modify_status
    #   The status of a modify operation, if any, initiated for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The master user name for the cluster. This name is used to connect
    #   to the database that is specified in the **DBName** parameter.
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of the initial database that was created when the cluster
    #   was created. This same name is returned for the life of the cluster.
    #   If an initial database was not specified, a database named `dev`dev
    #   was created by default.
    #   @return [String]
    #
    # @!attribute [rw] endpoint
    #   The connection endpoint.
    #   @return [Types::Endpoint]
    #
    # @!attribute [rw] cluster_create_time
    #   The date and time that the cluster was created.
    #   @return [Time]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automatic cluster snapshots are retained.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of cluster security group that are associated with the
    #   cluster. Each security group is represented by an element that
    #   contains `ClusterSecurityGroup.Name` and
    #   `ClusterSecurityGroup.Status` subelements.
    #
    #   Cluster security groups are used when the cluster is not created in
    #   an Amazon Virtual Private Cloud (VPC). Clusters that are created in
    #   a VPC use VPC security groups, which are listed by the
    #   **VpcSecurityGroups** parameter.
    #   @return [Array<Types::ClusterSecurityGroupMembership>]
    #
    # @!attribute [rw] vpc_security_groups
    #   A list of Amazon Virtual Private Cloud (Amazon VPC) security groups
    #   that are associated with the cluster. This parameter is returned
    #   only if the cluster is in a VPC.
    #   @return [Array<Types::VpcSecurityGroupMembership>]
    #
    # @!attribute [rw] cluster_parameter_groups
    #   The list of cluster parameter groups that are associated with this
    #   cluster. Each parameter group in the list is returned with its
    #   status.
    #   @return [Array<Types::ClusterParameterGroupStatus>]
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the subnet group that is associated with the cluster.
    #   This parameter is valid only when the cluster is in a VPC.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The identifier of the VPC the cluster is in, if the cluster is in a
    #   VPC.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The name of the Availability Zone in which the cluster is located.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range, in Universal Coordinated Time (UTC), during
    #   which system maintenance can occur.
    #   @return [String]
    #
    # @!attribute [rw] pending_modified_values
    #   A value that, if present, indicates that changes to the cluster are
    #   pending. Specific pending changes are identified by subelements.
    #   @return [Types::PendingModifiedValues]
    #
    # @!attribute [rw] cluster_version
    #   The version ID of the Amazon Redshift engine that is running on the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] allow_version_upgrade
    #   A Boolean value that, if `true`, indicates that major version
    #   upgrades will be applied automatically to the cluster during the
    #   maintenance window.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of compute nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   A Boolean value that, if `true`, indicates that the cluster can be
    #   accessed from a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypted
    #   A Boolean value that, if `true`, indicates that data in the cluster
    #   is encrypted at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] restore_status
    #   A value that describes the status of a cluster restore action. This
    #   parameter returns null if the cluster was not created by restoring a
    #   snapshot.
    #   @return [Types::RestoreStatus]
    #
    # @!attribute [rw] hsm_status
    #   A value that reports whether the Amazon Redshift cluster has
    #   finished applying any hardware security module (HSM) settings
    #   changes specified in a modify cluster command.
    #
    #   Values: active, applying
    #   @return [Types::HsmStatus]
    #
    # @!attribute [rw] cluster_snapshot_copy_status
    #   A value that returns the destination region and retention period
    #   that are configured for cross-region snapshot copy.
    #   @return [Types::ClusterSnapshotCopyStatus]
    #
    # @!attribute [rw] cluster_public_key
    #   The public key for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_nodes
    #   The nodes in the cluster.
    #   @return [Array<Types::ClusterNode>]
    #
    # @!attribute [rw] elastic_ip_status
    #   The status of the elastic IP (EIP) address.
    #   @return [Types::ElasticIpStatus]
    #
    # @!attribute [rw] cluster_revision_number
    #   The specific revision number of the database in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the cluster.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (AWS KMS) key ID of the encryption
    #   key used to encrypt data in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] iam_roles
    #   A list of AWS Identity and Access Management (IAM) roles that can be
    #   used by the cluster to access other AWS services.
    #   @return [Array<Types::ClusterIamRole>]
    #
    # @!attribute [rw] pending_actions
    #   Cluster operations that are waiting to be started.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] elastic_resize_number_of_node_options
    #   Indicates the number of nodes the cluster can be resized to with the
    #   elastic resize method.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Cluster AWS API Documentation
    #
    class Cluster < Struct.new(
      :cluster_identifier,
      :node_type,
      :cluster_status,
      :modify_status,
      :master_username,
      :db_name,
      :endpoint,
      :cluster_create_time,
      :automated_snapshot_retention_period,
      :cluster_security_groups,
      :vpc_security_groups,
      :cluster_parameter_groups,
      :cluster_subnet_group_name,
      :vpc_id,
      :availability_zone,
      :preferred_maintenance_window,
      :pending_modified_values,
      :cluster_version,
      :allow_version_upgrade,
      :number_of_nodes,
      :publicly_accessible,
      :encrypted,
      :restore_status,
      :hsm_status,
      :cluster_snapshot_copy_status,
      :cluster_public_key,
      :cluster_nodes,
      :elastic_ip_status,
      :cluster_revision_number,
      :tags,
      :kms_key_id,
      :enhanced_vpc_routing,
      :iam_roles,
      :pending_actions,
      :maintenance_track_name,
      :elastic_resize_number_of_node_options)
      include Aws::Structure
    end

    # Temporary credentials with authorization to log on to an Amazon
    # Redshift database.
    #
    # @!attribute [rw] db_user
    #   A database user name that is authorized to log on to the database
    #   `DbName` using the password `DbPassword`. If the specified DbUser
    #   exists in the database, the new user name has the same database
    #   privileges as the the user named in DbUser. By default, the user is
    #   added to PUBLIC. If the `DbGroups` parameter is specifed, `DbUser`
    #   is added to the listed groups for any sessions created using these
    #   credentials.
    #   @return [String]
    #
    # @!attribute [rw] db_password
    #   A temporary password that authorizes the user name returned by
    #   `DbUser` to log on to the database `DbName`.
    #   @return [String]
    #
    # @!attribute [rw] expiration
    #   The date and time the password in `DbPassword` expires.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterCredentials AWS API Documentation
    #
    class ClusterCredentials < Struct.new(
      :db_user,
      :db_password,
      :expiration)
      include Aws::Structure
    end

    # Describes a `ClusterDbRevision`.
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster.
    #   @return [String]
    #
    # @!attribute [rw] current_database_revision
    #   A string representing the current cluster version.
    #   @return [String]
    #
    # @!attribute [rw] database_revision_release_date
    #   The date on which the database revision was released.
    #   @return [Time]
    #
    # @!attribute [rw] revision_targets
    #   A list of `RevisionTarget` objects, where each object describes the
    #   database revision that a cluster can be updated to.
    #   @return [Array<Types::RevisionTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterDbRevision AWS API Documentation
    #
    class ClusterDbRevision < Struct.new(
      :cluster_identifier,
      :current_database_revision,
      :database_revision_release_date,
      :revision_targets)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A string representing the starting point for the next set of
    #   revisions. If a value is returned in a response, you can retrieve
    #   the next set of revisions by providing the value in the `marker`
    #   parameter and retrying the command. If the `marker` field is empty,
    #   all revisions have already been returned.
    #   @return [String]
    #
    # @!attribute [rw] cluster_db_revisions
    #   A list of revisions.
    #   @return [Array<Types::ClusterDbRevision>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterDbRevisionsMessage AWS API Documentation
    #
    class ClusterDbRevisionsMessage < Struct.new(
      :marker,
      :cluster_db_revisions)
      include Aws::Structure
    end

    # An AWS Identity and Access Management (IAM) role that can be used by
    # the associated Amazon Redshift cluster to access other AWS services.
    #
    # @!attribute [rw] iam_role_arn
    #   The Amazon Resource Name (ARN) of the IAM role, for example,
    #   `arn:aws:iam::123456789012:role/RedshiftCopyUnload`.
    #   @return [String]
    #
    # @!attribute [rw] apply_status
    #   A value that describes the status of the IAM role's association
    #   with an Amazon Redshift cluster.
    #
    #   The following are possible statuses and descriptions.
    #
    #   * `in-sync`\: The role is available for use by the cluster.
    #
    #   * `adding`\: The role is in the process of being associated with the
    #     cluster.
    #
    #   * `removing`\: The role is in the process of being disassociated
    #     with the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterIamRole AWS API Documentation
    #
    class ClusterIamRole < Struct.new(
      :iam_role_arn,
      :apply_status)
      include Aws::Structure
    end

    # The identifier of a node in a cluster.
    #
    # @!attribute [rw] node_role
    #   Whether the node is a leader node or a compute node.
    #   @return [String]
    #
    # @!attribute [rw] private_ip_address
    #   The private IP address of a node within a cluster.
    #   @return [String]
    #
    # @!attribute [rw] public_ip_address
    #   The public IP address of a node within a cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterNode AWS API Documentation
    #
    class ClusterNode < Struct.new(
      :node_role,
      :private_ip_address,
      :public_ip_address)
      include Aws::Structure
    end

    # Describes a parameter group.
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_family
    #   The name of the cluster parameter group family that this cluster
    #   parameter group is compatible with.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the cluster parameter group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterGroup AWS API Documentation
    #
    class ClusterParameterGroup < Struct.new(
      :parameter_group_name,
      :parameter_group_family,
      :description,
      :tags)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusterParameters action.
    #
    # @!attribute [rw] parameters
    #   A list of Parameter instances. Each instance lists the parameters of
    #   one cluster parameter group.
    #   @return [Array<Types::Parameter>]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterGroupDetails AWS API Documentation
    #
    class ClusterParameterGroupDetails < Struct.new(
      :parameters,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] parameter_group_name
    #   The name of the cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_status
    #   The status of the parameter group. For example, if you made a change
    #   to a parameter group name-value pair, then the change could be
    #   pending a reboot of an associated cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterGroupNameMessage AWS API Documentation
    #
    class ClusterParameterGroupNameMessage < Struct.new(
      :parameter_group_name,
      :parameter_group_status)
      include Aws::Structure
    end

    # Describes the status of a parameter group.
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the cluster parameter group.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of parameter updates.
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_status_list
    #   The list of parameter statuses.
    #
    #   For more information about parameters and parameter groups, go to
    #   [Amazon Redshift Parameter Groups][1] in the *Amazon Redshift
    #   Cluster Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #   @return [Array<Types::ClusterParameterStatus>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterGroupStatus AWS API Documentation
    #
    class ClusterParameterGroupStatus < Struct.new(
      :parameter_group_name,
      :parameter_apply_status,
      :cluster_parameter_status_list)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusterParameterGroups action.
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] parameter_groups
    #   A list of ClusterParameterGroup instances. Each instance describes
    #   one cluster parameter group.
    #   @return [Array<Types::ClusterParameterGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterGroupsMessage AWS API Documentation
    #
    class ClusterParameterGroupsMessage < Struct.new(
      :marker,
      :parameter_groups)
      include Aws::Structure
    end

    # Describes the status of a parameter group.
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_status
    #   The status of the parameter that indicates whether the parameter is
    #   in sync with the database, waiting for a cluster reboot, or
    #   encountered an error when being applied.
    #
    #   The following are possible statuses and descriptions.
    #
    #   * `in-sync`\: The parameter value is in sync with the database.
    #
    #   * `pending-reboot`\: The parameter value will be applied after the
    #     cluster reboots.
    #
    #   * `applying`\: The parameter value is being applied to the database.
    #
    #   * `invalid-parameter`\: Cannot apply the parameter value because it
    #     has an invalid value or syntax.
    #
    #   * `apply-deferred`\: The parameter contains static property changes.
    #     The changes are deferred until the cluster reboots.
    #
    #   * `apply-error`\: Cannot connect to the cluster. The parameter
    #     change will be applied after the cluster reboots.
    #
    #   * `unknown-error`\: Cannot apply the parameter change right now. The
    #     change will be applied after the cluster reboots.
    #   @return [String]
    #
    # @!attribute [rw] parameter_apply_error_description
    #   The error that prevented the parameter from being applied to the
    #   database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterParameterStatus AWS API Documentation
    #
    class ClusterParameterStatus < Struct.new(
      :parameter_name,
      :parameter_apply_status,
      :parameter_apply_error_description)
      include Aws::Structure
    end

    # Describes a security group.
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the cluster security group to which the operation was
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_groups
    #   A list of EC2 security groups that are permitted to access clusters
    #   associated with this cluster security group.
    #   @return [Array<Types::EC2SecurityGroup>]
    #
    # @!attribute [rw] ip_ranges
    #   A list of IP ranges (CIDR blocks) that are permitted to access
    #   clusters associated with this cluster security group.
    #   @return [Array<Types::IPRange>]
    #
    # @!attribute [rw] tags
    #   The list of tags for the cluster security group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSecurityGroup AWS API Documentation
    #
    class ClusterSecurityGroup < Struct.new(
      :cluster_security_group_name,
      :description,
      :ec2_security_groups,
      :ip_ranges,
      :tags)
      include Aws::Structure
    end

    # Describes a cluster security group.
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the cluster security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the cluster security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSecurityGroupMembership AWS API Documentation
    #
    class ClusterSecurityGroupMembership < Struct.new(
      :cluster_security_group_name,
      :status)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of ClusterSecurityGroup instances.
    #   @return [Array<Types::ClusterSecurityGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSecurityGroupMessage AWS API Documentation
    #
    class ClusterSecurityGroupMessage < Struct.new(
      :marker,
      :cluster_security_groups)
      include Aws::Structure
    end

    # Returns the destination region and retention period that are
    # configured for cross-region snapshot copy.
    #
    # @!attribute [rw] destination_region
    #   The destination region that snapshots are automatically copied to
    #   when cross-region snapshot copy is enabled.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   The number of days that automated snapshots are retained in the
    #   destination region after they are copied from a source region.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSnapshotCopyStatus AWS API Documentation
    #
    class ClusterSnapshotCopyStatus < Struct.new(
      :destination_region,
      :retention_period,
      :snapshot_copy_grant_name)
      include Aws::Structure
    end

    # Describes a subnet group.
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the cluster subnet group.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cluster subnet group.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC ID of the cluster subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_group_status
    #   The status of the cluster subnet group. Possible values are
    #   `Complete`, `Incomplete` and `Invalid`.
    #   @return [String]
    #
    # @!attribute [rw] subnets
    #   A list of the VPC Subnet elements.
    #   @return [Array<Types::Subnet>]
    #
    # @!attribute [rw] tags
    #   The list of tags for the cluster subnet group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSubnetGroup AWS API Documentation
    #
    class ClusterSubnetGroup < Struct.new(
      :cluster_subnet_group_name,
      :description,
      :vpc_id,
      :subnet_group_status,
      :subnets,
      :tags)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusterSubnetGroups action.
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] cluster_subnet_groups
    #   A list of ClusterSubnetGroup instances.
    #   @return [Array<Types::ClusterSubnetGroup>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterSubnetGroupMessage AWS API Documentation
    #
    class ClusterSubnetGroupMessage < Struct.new(
      :marker,
      :cluster_subnet_groups)
      include Aws::Structure
    end

    # Describes a cluster version, including the parameter group family and
    # description of the version.
    #
    # @!attribute [rw] cluster_version
    #   The version number used by the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_group_family
    #   The name of the cluster parameter group family for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the cluster version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterVersion AWS API Documentation
    #
    class ClusterVersion < Struct.new(
      :cluster_version,
      :cluster_parameter_group_family,
      :description)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusterVersions action.
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] cluster_versions
    #   A list of `Version` elements.
    #   @return [Array<Types::ClusterVersion>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClusterVersionsMessage AWS API Documentation
    #
    class ClusterVersionsMessage < Struct.new(
      :marker,
      :cluster_versions)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusters action.
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] clusters
    #   A list of `Cluster` objects, where each object describes one
    #   cluster.
    #   @return [Array<Types::Cluster>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ClustersMessage AWS API Documentation
    #
    class ClustersMessage < Struct.new(
      :marker,
      :clusters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CopyClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         source_snapshot_identifier: "String", # required
    #         source_snapshot_cluster_identifier: "String",
    #         target_snapshot_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] source_snapshot_identifier
    #   The identifier for the source snapshot.
    #
    #   Constraints:
    #
    #   * Must be the identifier for a valid automated snapshot whose state
    #     is `available`.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] source_snapshot_cluster_identifier
    #   The identifier of the cluster the source snapshot was created from.
    #   This parameter is required if your IAM user has a policy containing
    #   a snapshot resource element that specifies anything other than *
    #   for the cluster name.
    #
    #   Constraints:
    #
    #   * Must be the identifier for a valid cluster.
    #
    #   ^
    #   @return [String]
    #
    # @!attribute [rw] target_snapshot_identifier
    #   The identifier given to the new manual snapshot.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for the AWS account that is making the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CopyClusterSnapshotMessage AWS API Documentation
    #
    class CopyClusterSnapshotMessage < Struct.new(
      :source_snapshot_identifier,
      :source_snapshot_cluster_identifier,
      :target_snapshot_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Describes a snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CopyClusterSnapshotResult AWS API Documentation
    #
    class CopyClusterSnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterMessage
    #   data as a hash:
    #
    #       {
    #         db_name: "String",
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String", # required
    #         master_username: "String", # required
    #         master_user_password: "String", # required
    #         cluster_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         cluster_subnet_group_name: "String",
    #         availability_zone: "String",
    #         preferred_maintenance_window: "String",
    #         cluster_parameter_group_name: "String",
    #         automated_snapshot_retention_period: 1,
    #         port: 1,
    #         cluster_version: "String",
    #         allow_version_upgrade: false,
    #         number_of_nodes: 1,
    #         publicly_accessible: false,
    #         encrypted: false,
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         elastic_ip: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #         kms_key_id: "String",
    #         enhanced_vpc_routing: false,
    #         additional_info: "String",
    #         iam_roles: ["String"],
    #         maintenance_track_name: "String",
    #       }
    #
    # @!attribute [rw] db_name
    #   The name of the first database to be created when the cluster is
    #   created.
    #
    #   To create additional databases after the cluster is created, connect
    #   to the cluster with a SQL client and use SQL commands to create a
    #   database. For more information, go to [Create a Database][1] in the
    #   Amazon Redshift Database Developer Guide.
    #
    #   Default: `dev`
    #
    #   Constraints:
    #
    #   * Must contain 1 to 64 alphanumeric characters.
    #
    #   * Must contain only lowercase letters.
    #
    #   * Cannot be a word that is reserved by the service. A list of
    #     reserved words can be found in [Reserved Words][2] in the Amazon
    #     Redshift Database Developer Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/t_creating_database.html
    #   [2]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   A unique identifier for the cluster. You use this identifier to
    #   refer to the cluster for any subsequent cluster operations such as
    #   deleting or modifying. The identifier also appears in the Amazon
    #   Redshift console.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    #   Example: `myexamplecluster`
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The type of the cluster. When cluster type is specified as
    #
    #   * `single-node`, the **NumberOfNodes** parameter is not required.
    #
    #   * `multi-node`, the **NumberOfNodes** parameter is required.
    #
    #   Valid Values: `multi-node` \| `single-node`
    #
    #   Default: `multi-node`
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type to be provisioned for the cluster. For information
    #   about node types, go to [ Working with Clusters][1] in the *Amazon
    #   Redshift Cluster Management Guide*.
    #
    #   Valid Values: `ds2.xlarge` \| `ds2.8xlarge` \| `ds2.xlarge` \|
    #   `ds2.8xlarge` \| `dc1.large` \| `dc1.8xlarge` \| `dc2.large` \|
    #   `dc2.8xlarge`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes
    #   @return [String]
    #
    # @!attribute [rw] master_username
    #   The user name associated with the master user account for the
    #   cluster that is being created.
    #
    #   Constraints:
    #
    #   * Must be 1 - 128 alphanumeric characters. The user name can't be
    #     `PUBLIC`.
    #
    #   * First character must be a letter.
    #
    #   * Cannot be a reserved word. A list of reserved words can be found
    #     in [Reserved Words][1] in the Amazon Redshift Database Developer
    #     Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] master_user_password
    #   The password associated with the master user account for the cluster
    #   that is being created.
    #
    #   Constraints:
    #
    #   * Must be between 8 and 64 characters in length.
    #
    #   * Must contain at least one uppercase letter.
    #
    #   * Must contain at least one lowercase letter.
    #
    #   * Must contain one number.
    #
    #   * Can be any printable ASCII character (ASCII code 33 to 126) except
    #     ' (single quote), " (double quote), \\, /, @, or space.
    #   @return [String]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of security groups to be associated with this cluster.
    #
    #   Default: The default cluster security group for Amazon Redshift.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of Virtual Private Cloud (VPC) security groups to be
    #   associated with the cluster.
    #
    #   Default: The default VPC security group is associated with the
    #   cluster.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of a cluster subnet group to be associated with this
    #   cluster.
    #
    #   If this parameter is not provided the resulting cluster will be
    #   deployed outside virtual private cloud (VPC).
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The EC2 Availability Zone (AZ) in which you want Amazon Redshift to
    #   provision the cluster. For example, if you have several EC2
    #   instances running in a specific Availability Zone, then you might
    #   want the cluster to be provisioned in the same zone in order to
    #   decrease network latency.
    #
    #   Default: A random, system-chosen Availability Zone in the region
    #   that is specified by the endpoint.
    #
    #   Example: `us-east-1d`
    #
    #   Constraint: The specified Availability Zone must be in the same
    #   region as the current endpoint.
    #   @return [String]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which automated cluster
    #   maintenance can occur.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: A 30-minute window selected at random from an 8-hour block
    #   of time per region, occurring on a random day of the week. For more
    #   information about the time blocks for each region, see [Maintenance
    #   Windows][1] in Amazon Redshift Cluster Management Guide.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_group_name
    #   The name of the parameter group to be associated with this cluster.
    #
    #   Default: The default Amazon Redshift cluster parameter group. For
    #   information about the default parameter group, go to [Working with
    #   Amazon Redshift Parameter Groups][1]
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #   @return [String]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the
    #   value is 0, automated snapshots are disabled. Even if automated
    #   snapshots are disabled, you can still create manual snapshots when
    #   you want with CreateClusterSnapshot.
    #
    #   Default: `1`
    #
    #   Constraints: Must be a value from 0 to 35.
    #   @return [Integer]
    #
    # @!attribute [rw] port
    #   The port number on which the cluster accepts incoming connections.
    #
    #   The cluster is accessible only via the JDBC and ODBC connection
    #   strings. Part of the connection string requires the port on which
    #   the cluster will listen for incoming connections.
    #
    #   Default: `5439`
    #
    #   Valid Values: `1150-65535`
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_version
    #   The version of the Amazon Redshift engine software that you want to
    #   deploy on the cluster.
    #
    #   The version selected runs on all the nodes in the cluster.
    #
    #   Constraints: Only version 1.0 is currently available.
    #
    #   Example: `1.0`
    #   @return [String]
    #
    # @!attribute [rw] allow_version_upgrade
    #   If `true`, major version upgrades can be applied during the
    #   maintenance window to the Amazon Redshift engine that is running on
    #   the cluster.
    #
    #   When a new major version of the Amazon Redshift engine is released,
    #   you can request that the service automatically apply upgrades during
    #   the maintenance window to the Amazon Redshift engine that is running
    #   on your cluster.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of compute nodes in the cluster. This parameter is
    #   required when the **ClusterType** parameter is specified as
    #   `multi-node`.
    #
    #   For information about determining how many nodes you need, go to [
    #   Working with Clusters][1] in the *Amazon Redshift Cluster Management
    #   Guide*.
    #
    #   If you don't specify this parameter, you get a single-node cluster.
    #   When requesting a multi-node cluster, you must specify the number of
    #   nodes that you want in the cluster.
    #
    #   Default: `1`
    #
    #   Constraints: Value must be at least 1 and no more than 100.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#how-many-nodes
    #   @return [Integer]
    #
    # @!attribute [rw] publicly_accessible
    #   If `true`, the cluster can be accessed from a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] encrypted
    #   If `true`, the data in the cluster is encrypted at rest.
    #
    #   Default: false
    #   @return [Boolean]
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and
    #   store keys in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] elastic_ip
    #   The Elastic IP (EIP) address for the cluster.
    #
    #   Constraints: The cluster must be provisioned in EC2-VPC and
    #   publicly-accessible through an Internet gateway. For more
    #   information about provisioning clusters in EC2-VPC, go to [Supported
    #   Platforms to Launch Your Cluster][1] in the Amazon Redshift Cluster
    #   Management Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key
    #   that you want to use to encrypt data in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] additional_info
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] iam_roles
    #   A list of AWS Identity and Access Management (IAM) roles that can be
    #   used by the cluster to access other AWS services. You must supply
    #   the IAM roles in their Amazon Resource Name (ARN) format. You can
    #   supply up to 10 IAM roles in a single request.
    #
    #   A cluster can have up to 10 IAM roles associated with it at any
    #   time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maintenance_track_name
    #   An optional parameter for the name of the maintenance track for the
    #   cluster. If you don't provide a maintenance track name, the cluster
    #   is assigned to the `current` track.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterMessage AWS API Documentation
    #
    class CreateClusterMessage < Struct.new(
      :db_name,
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :master_username,
      :master_user_password,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :cluster_subnet_group_name,
      :availability_zone,
      :preferred_maintenance_window,
      :cluster_parameter_group_name,
      :automated_snapshot_retention_period,
      :port,
      :cluster_version,
      :allow_version_upgrade,
      :number_of_nodes,
      :publicly_accessible,
      :encrypted,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :elastic_ip,
      :tags,
      :kms_key_id,
      :enhanced_vpc_routing,
      :additional_info,
      :iam_roles,
      :maintenance_track_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         parameter_group_family: "String", # required
    #         description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the cluster parameter group.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique withing your AWS account.
    #
    #   <note markdown="1"> This value is stored as a lower-case string.
    #
    #    </note>
    #   @return [String]
    #
    # @!attribute [rw] parameter_group_family
    #   The Amazon Redshift engine version to which the cluster parameter
    #   group applies. The cluster engine version determines the set of
    #   parameters.
    #
    #   To get a list of valid parameter group family names, you can call
    #   DescribeClusterParameterGroups. By default, Amazon Redshift returns
    #   a list of all the parameter groups that are owned by your AWS
    #   account, including the default parameter groups for each Amazon
    #   Redshift engine version. The parameter group family names associated
    #   with the default parameter groups provide you the valid values. For
    #   example, a valid family name is "redshift-1.0".
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterParameterGroupMessage AWS API Documentation
    #
    class CreateClusterParameterGroupMessage < Struct.new(
      :parameter_group_name,
      :parameter_group_family,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_parameter_group
    #   Describes a parameter group.
    #   @return [Types::ClusterParameterGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterParameterGroupResult AWS API Documentation
    #
    class CreateClusterParameterGroupResult < Struct.new(
      :cluster_parameter_group)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterResult AWS API Documentation
    #
    class CreateClusterResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "String", # required
    #         description: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name for the security group. Amazon Redshift stores the value as
    #   a lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 alphanumeric characters or hyphens.
    #
    #   * Must not be "Default".
    #
    #   * Must be unique for all security groups that are created by your
    #     AWS account.
    #
    #   Example: `examplesecuritygroup`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the security group.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSecurityGroupMessage AWS API Documentation
    #
    class CreateClusterSecurityGroupMessage < Struct.new(
      :cluster_security_group_name,
      :description,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_security_group
    #   Describes a security group.
    #   @return [Types::ClusterSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSecurityGroupResult AWS API Documentation
    #
    class CreateClusterSecurityGroupResult < Struct.new(
      :cluster_security_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_identifier: "String", # required
    #         cluster_identifier: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] snapshot_identifier
    #   A unique identifier for the snapshot that you are requesting. This
    #   identifier must be unique for all snapshots within the AWS account.
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
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier for which you want a snapshot.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSnapshotMessage AWS API Documentation
    #
    class CreateClusterSnapshotMessage < Struct.new(
      :snapshot_identifier,
      :cluster_identifier,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Describes a snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSnapshotResult AWS API Documentation
    #
    class CreateClusterSnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateClusterSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cluster_subnet_group_name: "String", # required
    #         description: "String", # required
    #         subnet_ids: ["String"], # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name for the subnet group. Amazon Redshift stores the value as a
    #   lowercase string.
    #
    #   Constraints:
    #
    #   * Must contain no more than 255 alphanumeric characters or hyphens.
    #
    #   * Must not be "Default".
    #
    #   * Must be unique for all subnet groups that are created by your AWS
    #     account.
    #
    #   Example: `examplesubnetgroup`
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description for the subnet group.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   An array of VPC subnet IDs. A maximum of 20 subnets can be modified
    #   in a single request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSubnetGroupMessage AWS API Documentation
    #
    class CreateClusterSubnetGroupMessage < Struct.new(
      :cluster_subnet_group_name,
      :description,
      :subnet_ids,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_subnet_group
    #   Describes a subnet group.
    #   @return [Types::ClusterSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateClusterSubnetGroupResult AWS API Documentation
    #
    class CreateClusterSubnetGroupResult < Struct.new(
      :cluster_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String", # required
    #         source_type: "String",
    #         source_ids: ["String"],
    #         event_categories: ["String"],
    #         severity: "String",
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
    #   The name of the event subscription to be created.
    #
    #   Constraints:
    #
    #   * Cannot be null, empty, or blank.
    #
    #   * Must contain from 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic used to
    #   transmit the event notifications. The ARN is created by Amazon SNS
    #   when you create a topic and subscribe to it.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that will be generating the events. For example,
    #   if you want to be notified of events generated by a cluster, you
    #   would set this parameter to cluster. If this value is not specified,
    #   events are returned for all Amazon Redshift objects in your AWS
    #   account. You must specify a source type in order to specify source
    #   IDs.
    #
    #   Valid values: cluster, cluster-parameter-group,
    #   cluster-security-group, and cluster-snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_ids
    #   A list of one or more identifiers of Amazon Redshift source objects.
    #   All of the objects must be of the same type as was specified in the
    #   source type parameter. The event subscription will return only
    #   events generated by the specified objects. If not specified, then
    #   events are returned for all objects within the source type
    #   specified.
    #
    #   Example: my-cluster-1, my-cluster-2
    #
    #   Example: my-snapshot-20131010
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories
    #   Specifies the Amazon Redshift event categories to be published by
    #   the event notification subscription.
    #
    #   Values: Configuration, Management, Monitoring, Security
    #   @return [Array<String>]
    #
    # @!attribute [rw] severity
    #   Specifies the Amazon Redshift event severity to be published by the
    #   event notification subscription.
    #
    #   Values: ERROR, INFO
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   A Boolean value; set to `true` to activate the subscription, set to
    #   `false` to create the subscription but not active it.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateEventSubscriptionMessage AWS API Documentation
    #
    class CreateEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :source_ids,
      :event_categories,
      :severity,
      :enabled,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Describes event subscriptions.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateEventSubscriptionResult AWS API Documentation
    #
    class CreateEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHsmClientCertificateMessage
    #   data as a hash:
    #
    #       {
    #         hsm_client_certificate_identifier: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The identifier to be assigned to the new HSM client certificate that
    #   the cluster will use to connect to the HSM to use the database
    #   encryption keys.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmClientCertificateMessage AWS API Documentation
    #
    class CreateHsmClientCertificateMessage < Struct.new(
      :hsm_client_certificate_identifier,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] hsm_client_certificate
    #   Returns information about an HSM client certificate. The certificate
    #   is stored in a secure Hardware Storage Module (HSM), and used by the
    #   Amazon Redshift cluster to encrypt data files.
    #   @return [Types::HsmClientCertificate]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmClientCertificateResult AWS API Documentation
    #
    class CreateHsmClientCertificateResult < Struct.new(
      :hsm_client_certificate)
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateHsmConfigurationMessage
    #   data as a hash:
    #
    #       {
    #         hsm_configuration_identifier: "String", # required
    #         description: "String", # required
    #         hsm_ip_address: "String", # required
    #         hsm_partition_name: "String", # required
    #         hsm_partition_password: "String", # required
    #         hsm_server_public_certificate: "String", # required
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The identifier to be assigned to the new Amazon Redshift HSM
    #   configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the HSM configuration to be created.
    #   @return [String]
    #
    # @!attribute [rw] hsm_ip_address
    #   The IP address that the Amazon Redshift cluster must use to access
    #   the HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_partition_name
    #   The name of the partition in the HSM where the Amazon Redshift
    #   clusters will store their database encryption keys.
    #   @return [String]
    #
    # @!attribute [rw] hsm_partition_password
    #   The password required to access the HSM partition.
    #   @return [String]
    #
    # @!attribute [rw] hsm_server_public_certificate
    #   The HSMs public certificate file. When using Cloud HSM, the file
    #   name is server.pem.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmConfigurationMessage AWS API Documentation
    #
    class CreateHsmConfigurationMessage < Struct.new(
      :hsm_configuration_identifier,
      :description,
      :hsm_ip_address,
      :hsm_partition_name,
      :hsm_partition_password,
      :hsm_server_public_certificate,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] hsm_configuration
    #   Returns information about an HSM configuration, which is an object
    #   that describes to Amazon Redshift clusters the information they
    #   require to connect to an HSM where they can store database
    #   encryption keys.
    #   @return [Types::HsmConfiguration]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateHsmConfigurationResult AWS API Documentation
    #
    class CreateHsmConfigurationResult < Struct.new(
      :hsm_configuration)
      include Aws::Structure
    end

    # The result of the `CreateSnapshotCopyGrant` action.
    #
    # @note When making an API call, you may pass CreateSnapshotCopyGrantMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_copy_grant_name: "String", # required
    #         kms_key_id: "String",
    #         tags: [
    #           {
    #             key: "String",
    #             value: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant. This name must be unique in the
    #   region for the AWS account.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The unique identifier of the customer master key (CMK) to which to
    #   grant Amazon Redshift permission. If no key is specified, the
    #   default key is used.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateSnapshotCopyGrantMessage AWS API Documentation
    #
    class CreateSnapshotCopyGrantMessage < Struct.new(
      :snapshot_copy_grant_name,
      :kms_key_id,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot_copy_grant
    #   The snapshot copy grant that grants Amazon Redshift permission to
    #   encrypt copied snapshots with the specified customer master key
    #   (CMK) from AWS KMS in the destination region.
    #
    #   For more information about managing snapshot copy grants, go to
    #   [Amazon Redshift Database Encryption][1] in the *Amazon Redshift
    #   Cluster Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
    #   @return [Types::SnapshotCopyGrant]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateSnapshotCopyGrantResult AWS API Documentation
    #
    class CreateSnapshotCopyGrantResult < Struct.new(
      :snapshot_copy_grant)
      include Aws::Structure
    end

    # Contains the output from the `CreateTags` action.
    #
    # @note When making an API call, you may pass CreateTagsMessage
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
    #   The Amazon Resource Name (ARN) to which you want to add the tag or
    #   tags. For example,
    #   `arn:aws:redshift:us-east-1:123456789:cluster:t1`.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   One or more name/value pairs to add as tags to the specified
    #   resource. Each tag name is passed in with the parameter `Key` and
    #   the corresponding value is passed in with the parameter `Value`. The
    #   `Key` and `Value` parameters are separated by a comma (,). Separate
    #   multiple tags with a space. For example, `--tags
    #   "Key"="owner","Value"="admin" "Key"="environment","Value"="test"
    #   "Key"="version","Value"="1.0"`.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/CreateTagsMessage AWS API Documentation
    #
    class CreateTagsMessage < Struct.new(
      :resource_name,
      :tags)
      include Aws::Structure
    end

    # Describes the default cluster parameters for a parameter group family.
    #
    # @!attribute [rw] parameter_group_family
    #   The name of the cluster parameter group family to which the engine
    #   default parameters apply.
    #   @return [String]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The list of cluster default parameters.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DefaultClusterParameters AWS API Documentation
    #
    class DefaultClusterParameters < Struct.new(
      :parameter_group_family,
      :marker,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         skip_final_cluster_snapshot: false,
    #         final_cluster_snapshot_identifier: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster to be deleted.
    #
    #   Constraints:
    #
    #   * Must contain lowercase characters.
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @!attribute [rw] skip_final_cluster_snapshot
    #   Determines whether a final snapshot of the cluster is created before
    #   Amazon Redshift deletes the cluster. If `true`, a final cluster
    #   snapshot is not created. If `false`, a final cluster snapshot is
    #   created before the cluster is deleted.
    #
    #   <note markdown="1"> The *FinalClusterSnapshotIdentifier* parameter must be specified if
    #   *SkipFinalClusterSnapshot* is `false`.
    #
    #    </note>
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] final_cluster_snapshot_identifier
    #   The identifier of the final snapshot that is to be created
    #   immediately before deleting the cluster. If this parameter is
    #   provided, *SkipFinalClusterSnapshot* must be `false`.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterMessage AWS API Documentation
    #
    class DeleteClusterMessage < Struct.new(
      :cluster_identifier,
      :skip_final_cluster_snapshot,
      :final_cluster_snapshot_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to be deleted.
    #
    #   Constraints:
    #
    #   * Must be the name of an existing cluster parameter group.
    #
    #   * Cannot delete a default cluster parameter group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterParameterGroupMessage AWS API Documentation
    #
    class DeleteClusterParameterGroupMessage < Struct.new(
      :parameter_group_name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterResult AWS API Documentation
    #
    class DeleteClusterResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterSecurityGroupMessage
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the cluster security group to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSecurityGroupMessage AWS API Documentation
    #
    class DeleteClusterSecurityGroupMessage < Struct.new(
      :cluster_security_group_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String",
    #       }
    #
    # @!attribute [rw] snapshot_identifier
    #   The unique identifier of the manual snapshot to be deleted.
    #
    #   Constraints: Must be the name of an existing snapshot that is in the
    #   `available` state.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_cluster_identifier
    #   The unique identifier of the cluster the snapshot was created from.
    #   This parameter is required if your IAM user has a policy containing
    #   a snapshot resource element that specifies anything other than *
    #   for the cluster name.
    #
    #   Constraints: Must be the name of valid cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSnapshotMessage AWS API Documentation
    #
    class DeleteClusterSnapshotMessage < Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Describes a snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSnapshotResult AWS API Documentation
    #
    class DeleteClusterSnapshotResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteClusterSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cluster_subnet_group_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the cluster subnet group name to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteClusterSubnetGroupMessage AWS API Documentation
    #
    class DeleteClusterSubnetGroupMessage < Struct.new(
      :cluster_subnet_group_name)
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
    #   The name of the Amazon Redshift event notification subscription to
    #   be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteEventSubscriptionMessage AWS API Documentation
    #
    class DeleteEventSubscriptionMessage < Struct.new(
      :subscription_name)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteHsmClientCertificateMessage
    #   data as a hash:
    #
    #       {
    #         hsm_client_certificate_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The identifier of the HSM client certificate to be deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmClientCertificateMessage AWS API Documentation
    #
    class DeleteHsmClientCertificateMessage < Struct.new(
      :hsm_client_certificate_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteHsmConfigurationMessage
    #   data as a hash:
    #
    #       {
    #         hsm_configuration_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The identifier of the Amazon Redshift HSM configuration to be
    #   deleted.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteHsmConfigurationMessage AWS API Documentation
    #
    class DeleteHsmConfigurationMessage < Struct.new(
      :hsm_configuration_identifier)
      include Aws::Structure
    end

    # The result of the `DeleteSnapshotCopyGrant` action.
    #
    # @note When making an API call, you may pass DeleteSnapshotCopyGrantMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_copy_grant_name: "String", # required
    #       }
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteSnapshotCopyGrantMessage AWS API Documentation
    #
    class DeleteSnapshotCopyGrantMessage < Struct.new(
      :snapshot_copy_grant_name)
      include Aws::Structure
    end

    # Contains the output from the `DeleteTags` action.
    #
    # @note When making an API call, you may pass DeleteTagsMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String", # required
    #         tag_keys: ["String"], # required
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) from which you want to remove the tag
    #   or tags. For example,
    #   `arn:aws:redshift:us-east-1:123456789:cluster:t1`.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag key that you want to delete.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DeleteTagsMessage AWS API Documentation
    #
    class DeleteTagsMessage < Struct.new(
      :resource_name,
      :tag_keys)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterDbRevisionsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   A unique identifier for a cluster whose `ClusterDbRevisions` you are
    #   requesting. This parameter is case sensitive. All clusters defined
    #   for an account are returned by default.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   MaxRecords value, a value is returned in the `marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned `marker` value in the `marker` parameter and
    #   retrying the request.
    #
    #   Default: 100
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point for
    #   returning a set of response records. When the results of a
    #   `DescribeClusterDbRevisions` request exceed the value specified in
    #   `MaxRecords`, Amazon Redshift returns a value in the `marker` field
    #   of the response. You can retrieve the next set of response records
    #   by providing the returned `marker` value in the `marker` parameter
    #   and retrying the request.
    #
    #   Constraints: You can specify either the `ClusterIdentifier`
    #   parameter, or the `marker` parameter, but not both.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterDbRevisionsMessage AWS API Documentation
    #
    class DescribeClusterDbRevisionsMessage < Struct.new(
      :cluster_identifier,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterParameterGroupsMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of a specific parameter group for which to return details.
    #   By default, details about all parameter groups and the default
    #   parameter group are returned.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterParameterGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   parameter groups that are associated with the specified key or keys.
    #   For example, suppose that you have parameter groups that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response
    #   with the parameter groups that have either or both of these tag keys
    #   associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster parameter groups that are associated with the specified tag
    #   value or values. For example, suppose that you have parameter groups
    #   that are tagged with values called `admin` and `test`. If you
    #   specify both of these tag values in the request, Amazon Redshift
    #   returns a response with the parameter groups that have either or
    #   both of these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParameterGroupsMessage AWS API Documentation
    #
    class DescribeClusterParameterGroupsMessage < Struct.new(
      :parameter_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         source: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of a cluster parameter group for which to return details.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The parameter types to return. Specify `user` to show parameters
    #   that are different form the default. Similarly, specify
    #   `engine-default` to show parameters that are the same as the default
    #   parameter group.
    #
    #   Default: All parameter types returned.
    #
    #   Valid Values: `user` \| `engine-default`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterParameters request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterParametersMessage AWS API Documentation
    #
    class DescribeClusterParametersMessage < Struct.new(
      :parameter_group_name,
      :source,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterSecurityGroupsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of a cluster security group for which you are requesting
    #   details. You can specify either the **Marker** parameter or a
    #   **ClusterSecurityGroupName** parameter, but not both.
    #
    #   Example: `securitygroup1`
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSecurityGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the **ClusterSecurityGroupName**
    #   parameter or the **Marker** parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   security groups that are associated with the specified key or keys.
    #   For example, suppose that you have security groups that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response
    #   with the security groups that have either or both of these tag keys
    #   associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster security groups that are associated with the specified tag
    #   value or values. For example, suppose that you have security groups
    #   that are tagged with values called `admin` and `test`. If you
    #   specify both of these tag values in the request, Amazon Redshift
    #   returns a response with the security groups that have either or both
    #   of these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSecurityGroupsMessage AWS API Documentation
    #
    class DescribeClusterSecurityGroupsMessage < Struct.new(
      :cluster_security_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterSnapshotsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String",
    #         snapshot_identifier: "String",
    #         snapshot_type: "String",
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         max_records: 1,
    #         marker: "String",
    #         owner_account: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #         cluster_exists: false,
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster for which information about snapshots
    #   is requested.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The snapshot identifier of the snapshot about which to return
    #   information.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The type of snapshots for which you are requesting information. By
    #   default, snapshots of all types are returned.
    #
    #   Valid Values: `automated` \| `manual`
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   A value that requests only snapshots created at or after the
    #   specified time. The time value is specified in ISO 8601 format. For
    #   more information about ISO 8601, go to the [ISO8601 Wikipedia
    #   page.][1]
    #
    #   Example: `2012-07-16T18:00:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   A time value that requests only snapshots created at or before the
    #   specified time. The time value is specified in ISO 8601 format. For
    #   more information about ISO 8601, go to the [ISO8601 Wikipedia
    #   page.][1]
    #
    #   Example: `2012-07-16T18:00:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSnapshots request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] owner_account
    #   The AWS customer account used to create or copy the snapshot. Use
    #   this field to filter the results to snapshots owned by a particular
    #   account. To describe snapshots you own, either specify your AWS
    #   customer account, or do not specify the parameter.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   snapshots that are associated with the specified key or keys. For
    #   example, suppose that you have snapshots that are tagged with keys
    #   called `owner` and `environment`. If you specify both of these tag
    #   keys in the request, Amazon Redshift returns a response with the
    #   snapshots that have either or both of these tag keys associated with
    #   them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster snapshots that are associated with the specified tag value
    #   or values. For example, suppose that you have snapshots that are
    #   tagged with values called `admin` and `test`. If you specify both of
    #   these tag values in the request, Amazon Redshift returns a response
    #   with the snapshots that have either or both of these tag values
    #   associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] cluster_exists
    #   A value that indicates whether to return snapshots only for an
    #   existing cluster. Table-level restore can be performed only using a
    #   snapshot of an existing cluster, that is, a cluster that has not
    #   been deleted. If `ClusterExists` is set to `true`,
    #   `ClusterIdentifier` is required.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSnapshotsMessage AWS API Documentation
    #
    class DescribeClusterSnapshotsMessage < Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :snapshot_type,
      :start_time,
      :end_time,
      :max_records,
      :marker,
      :owner_account,
      :tag_keys,
      :tag_values,
      :cluster_exists)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterSubnetGroupsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_subnet_group_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the cluster subnet group for which information is
    #   requested.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterSubnetGroups request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching cluster
    #   subnet groups that are associated with the specified key or keys.
    #   For example, suppose that you have subnet groups that are tagged
    #   with keys called `owner` and `environment`. If you specify both of
    #   these tag keys in the request, Amazon Redshift returns a response
    #   with the subnet groups that have either or both of these tag keys
    #   associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   cluster subnet groups that are associated with the specified tag
    #   value or values. For example, suppose that you have subnet groups
    #   that are tagged with values called `admin` and `test`. If you
    #   specify both of these tag values in the request, Amazon Redshift
    #   returns a response with the subnet groups that have either or both
    #   of these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterSubnetGroupsMessage AWS API Documentation
    #
    class DescribeClusterSubnetGroupsMessage < Struct.new(
      :cluster_subnet_group_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterTracksMessage
    #   data as a hash:
    #
    #       {
    #         maintenance_track_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   An integer value for the maximum number of maintenance tracks to
    #   return.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   `DescribeClusterTracks` request exceed the value specified in
    #   `MaxRecords`, Amazon Redshift returns a value in the `Marker` field
    #   of the response. You can retrieve the next set of response records
    #   by providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterTracksMessage AWS API Documentation
    #
    class DescribeClusterTracksMessage < Struct.new(
      :maintenance_track_name,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClusterVersionsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_version: "String",
    #         cluster_parameter_group_family: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cluster_version
    #   The specific cluster version to return.
    #
    #   Example: `1.0`
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_group_family
    #   The name of a specific cluster parameter group family to return
    #   details for.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeClusterVersions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClusterVersionsMessage AWS API Documentation
    #
    class DescribeClusterVersionsMessage < Struct.new(
      :cluster_version,
      :cluster_parameter_group_family,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeClustersMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of a cluster whose properties you are
    #   requesting. This parameter is case sensitive.
    #
    #   The default is that all clusters defined for an account are
    #   returned.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeClusters
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the
    #   next set of response records by providing the returned marker value
    #   in the `Marker` parameter and retrying the request.
    #
    #   Constraints: You can specify either the **ClusterIdentifier**
    #   parameter or the **Marker** parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching clusters
    #   that are associated with the specified key or keys. For example,
    #   suppose that you have clusters that are tagged with keys called
    #   `owner` and `environment`. If you specify both of these tag keys in
    #   the request, Amazon Redshift returns a response with the clusters
    #   that have either or both of these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   clusters that are associated with the specified tag value or values.
    #   For example, suppose that you have clusters that are tagged with
    #   values called `admin` and `test`. If you specify both of these tag
    #   values in the request, Amazon Redshift returns a response with the
    #   clusters that have either or both of these tag values associated
    #   with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeClustersMessage AWS API Documentation
    #
    class DescribeClustersMessage < Struct.new(
      :cluster_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeDefaultClusterParametersMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_family: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] parameter_group_family
    #   The name of the cluster parameter group family.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeDefaultClusterParameters request exceed the value specified
    #   in `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeDefaultClusterParametersMessage AWS API Documentation
    #
    class DescribeDefaultClusterParametersMessage < Struct.new(
      :parameter_group_family,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] default_cluster_parameters
    #   Describes the default cluster parameters for a parameter group
    #   family.
    #   @return [Types::DefaultClusterParameters]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeDefaultClusterParametersResult AWS API Documentation
    #
    class DescribeDefaultClusterParametersResult < Struct.new(
      :default_cluster_parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventCategoriesMessage
    #   data as a hash:
    #
    #       {
    #         source_type: "String",
    #       }
    #
    # @!attribute [rw] source_type
    #   The source type, such as cluster or parameter group, to which the
    #   described event categories apply.
    #
    #   Valid values: cluster, cluster-snapshot, cluster-parameter-group,
    #   and cluster-security-group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventCategoriesMessage AWS API Documentation
    #
    class DescribeEventCategoriesMessage < Struct.new(
      :source_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventSubscriptionsMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the Amazon Redshift event notification subscription to
    #   be described.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeEventSubscriptions request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching event
    #   notification subscriptions that are associated with the specified
    #   key or keys. For example, suppose that you have subscriptions that
    #   are tagged with keys called `owner` and `environment`. If you
    #   specify both of these tag keys in the request, Amazon Redshift
    #   returns a response with the subscriptions that have either or both
    #   of these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   event notification subscriptions that are associated with the
    #   specified tag value or values. For example, suppose that you have
    #   subscriptions that are tagged with values called `admin` and `test`.
    #   If you specify both of these tag values in the request, Amazon
    #   Redshift returns a response with the subscriptions that have either
    #   or both of these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventSubscriptionsMessage AWS API Documentation
    #
    class DescribeEventSubscriptionsMessage < Struct.new(
      :subscription_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeEventsMessage
    #   data as a hash:
    #
    #       {
    #         source_identifier: "String",
    #         source_type: "cluster", # accepts cluster, cluster-parameter-group, cluster-security-group, cluster-snapshot
    #         start_time: Time.now,
    #         end_time: Time.now,
    #         duration: 1,
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] source_identifier
    #   The identifier of the event source for which events will be
    #   returned. If this parameter is not specified, then all sources are
    #   included in the response.
    #
    #   Constraints:
    #
    #   If *SourceIdentifier* is supplied, *SourceType* must also be
    #   provided.
    #
    #   * Specify a cluster identifier when *SourceType* is `cluster`.
    #
    #   * Specify a cluster security group name when *SourceType* is
    #     `cluster-security-group`.
    #
    #   * Specify a cluster parameter group name when *SourceType* is
    #     `cluster-parameter-group`.
    #
    #   * Specify a cluster snapshot identifier when *SourceType* is
    #     `cluster-snapshot`.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The event source to retrieve events for. If no value is specified,
    #   all events are returned.
    #
    #   Constraints:
    #
    #   If *SourceType* is supplied, *SourceIdentifier* must also be
    #   provided.
    #
    #   * Specify `cluster` when *SourceIdentifier* is a cluster identifier.
    #
    #   * Specify `cluster-security-group` when *SourceIdentifier* is a
    #     cluster security group name.
    #
    #   * Specify `cluster-parameter-group` when *SourceIdentifier* is a
    #     cluster parameter group name.
    #
    #   * Specify `cluster-snapshot` when *SourceIdentifier* is a cluster
    #     snapshot identifier.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The beginning of the time interval to retrieve events for, specified
    #   in ISO 8601 format. For more information about ISO 8601, go to the
    #   [ISO8601 Wikipedia page.][1]
    #
    #   Example: `2009-07-08T18:00Z`
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
    #   Example: `2009-07-08T18:00Z`
    #
    #
    #
    #   [1]: http://en.wikipedia.org/wiki/ISO_8601
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The number of minutes prior to the time of the request for which to
    #   retrieve events. For example, if the request is sent at 18:00 and
    #   you specify a duration of 60, then only events which have occurred
    #   after 17:00 will be returned.
    #
    #   Default: `60`
    #   @return [Integer]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeEvents
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the
    #   next set of response records by providing the returned marker value
    #   in the `Marker` parameter and retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeEventsMessage AWS API Documentation
    #
    class DescribeEventsMessage < Struct.new(
      :source_identifier,
      :source_type,
      :start_time,
      :end_time,
      :duration,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHsmClientCertificatesMessage
    #   data as a hash:
    #
    #       {
    #         hsm_client_certificate_identifier: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The identifier of a specific HSM client certificate for which you
    #   want information. If no identifier is specified, information is
    #   returned for all HSM client certificates owned by your AWS customer
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeHsmClientCertificates request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching HSM
    #   client certificates that are associated with the specified key or
    #   keys. For example, suppose that you have HSM client certificates
    #   that are tagged with keys called `owner` and `environment`. If you
    #   specify both of these tag keys in the request, Amazon Redshift
    #   returns a response with the HSM client certificates that have either
    #   or both of these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching HSM
    #   client certificates that are associated with the specified tag value
    #   or values. For example, suppose that you have HSM client
    #   certificates that are tagged with values called `admin` and `test`.
    #   If you specify both of these tag values in the request, Amazon
    #   Redshift returns a response with the HSM client certificates that
    #   have either or both of these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmClientCertificatesMessage AWS API Documentation
    #
    class DescribeHsmClientCertificatesMessage < Struct.new(
      :hsm_client_certificate_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeHsmConfigurationsMessage
    #   data as a hash:
    #
    #       {
    #         hsm_configuration_identifier: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The identifier of a specific Amazon Redshift HSM configuration to be
    #   described. If no identifier is specified, information is returned
    #   for all HSM configurations owned by your AWS customer account.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeHsmConfigurations request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching HSM
    #   configurations that are associated with the specified key or keys.
    #   For example, suppose that you have HSM configurations that are
    #   tagged with keys called `owner` and `environment`. If you specify
    #   both of these tag keys in the request, Amazon Redshift returns a
    #   response with the HSM configurations that have either or both of
    #   these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching HSM
    #   configurations that are associated with the specified tag value or
    #   values. For example, suppose that you have HSM configurations that
    #   are tagged with values called `admin` and `test`. If you specify
    #   both of these tag values in the request, Amazon Redshift returns a
    #   response with the HSM configurations that have either or both of
    #   these tag values associated with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeHsmConfigurationsMessage AWS API Documentation
    #
    class DescribeHsmConfigurationsMessage < Struct.new(
      :hsm_configuration_identifier,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeLoggingStatusMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster from which to get the logging status.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeLoggingStatusMessage AWS API Documentation
    #
    class DescribeLoggingStatusMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeOrderableClusterOptionsMessage
    #   data as a hash:
    #
    #       {
    #         cluster_version: "String",
    #         node_type: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cluster_version
    #   The version filter value. Specify this parameter to show only the
    #   available offerings matching the specified version.
    #
    #   Default: All versions.
    #
    #   Constraints: Must be one of the version returned from
    #   DescribeClusterVersions.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type filter value. Specify this parameter to show only the
    #   available offerings matching the specified node type.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeOrderableClusterOptions request exceed the value specified
    #   in `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeOrderableClusterOptionsMessage AWS API Documentation
    #
    class DescribeOrderableClusterOptionsMessage < Struct.new(
      :cluster_version,
      :node_type,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservedNodeOfferingsMessage
    #   data as a hash:
    #
    #       {
    #         reserved_node_offering_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_node_offering_id
    #   The unique identifier for the offering.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   DescribeReservedNodeOfferings request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodeOfferingsMessage AWS API Documentation
    #
    class DescribeReservedNodeOfferingsMessage < Struct.new(
      :reserved_node_offering_id,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeReservedNodesMessage
    #   data as a hash:
    #
    #       {
    #         reserved_node_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_node_id
    #   Identifier for the node reservation.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a DescribeReservedNodes
    #   request exceed the value specified in `MaxRecords`, AWS returns a
    #   value in the `Marker` field of the response. You can retrieve the
    #   next set of response records by providing the returned marker value
    #   in the `Marker` parameter and retrying the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeReservedNodesMessage AWS API Documentation
    #
    class DescribeReservedNodesMessage < Struct.new(
      :reserved_node_id,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeResizeMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of a cluster whose resize progress you are
    #   requesting. This parameter is case-sensitive.
    #
    #   By default, resize operations for all clusters defined for an AWS
    #   account are returned.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeResizeMessage AWS API Documentation
    #
    class DescribeResizeMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # The result of the `DescribeSnapshotCopyGrants` action.
    #
    # @note When making an API call, you may pass DescribeSnapshotCopyGrantsMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_copy_grant_name: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned marker value.
    #
    #   Default: `100`
    #
    #   Constraints: minimum 20, maximum 100.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   `DescribeSnapshotCopyGrant` request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the **SnapshotCopyGrantName**
    #   parameter or the **Marker** parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching
    #   resources that are associated with the specified key or keys. For
    #   example, suppose that you have resources tagged with keys called
    #   `owner` and `environment`. If you specify both of these tag keys in
    #   the request, Amazon Redshift returns a response with all resources
    #   that have either or both of these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   resources that are associated with the specified value or values.
    #   For example, suppose that you have resources tagged with values
    #   called `admin` and `test`. If you specify both of these tag values
    #   in the request, Amazon Redshift returns a response with all
    #   resources that have either or both of these tag values associated
    #   with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeSnapshotCopyGrantsMessage AWS API Documentation
    #
    class DescribeSnapshotCopyGrantsMessage < Struct.new(
      :snapshot_copy_grant_name,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTableRestoreStatusMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String",
    #         table_restore_request_id: "String",
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The Amazon Redshift cluster that the table is being restored to.
    #   @return [String]
    #
    # @!attribute [rw] table_restore_request_id
    #   The identifier of the table restore request to return status for. If
    #   you don't specify a `TableRestoreRequestId` value, then
    #   `DescribeTableRestoreStatus` returns the status of all in-progress
    #   table restore requests.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number of records to include in the response. If more
    #   records exist than the specified `MaxRecords` value, a pagination
    #   token called a marker is included in the response so that the
    #   remaining results can be retrieved.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   An optional pagination token provided by a previous
    #   `DescribeTableRestoreStatus` request. If this parameter is
    #   specified, the response includes only records beyond the marker, up
    #   to the value specified by the `MaxRecords` parameter.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTableRestoreStatusMessage AWS API Documentation
    #
    class DescribeTableRestoreStatusMessage < Struct.new(
      :cluster_identifier,
      :table_restore_request_id,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeTagsMessage
    #   data as a hash:
    #
    #       {
    #         resource_name: "String",
    #         resource_type: "String",
    #         max_records: 1,
    #         marker: "String",
    #         tag_keys: ["String"],
    #         tag_values: ["String"],
    #       }
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) for which you want to describe the
    #   tag or tags. For example,
    #   `arn:aws:redshift:us-east-1:123456789:cluster:t1`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource with which you want to view tags. Valid
    #   resource types are:
    #
    #   * Cluster
    #
    #   * CIDR/IP
    #
    #   * EC2 security group
    #
    #   * Snapshot
    #
    #   * Cluster security group
    #
    #   * Subnet group
    #
    #   * HSM connection
    #
    #   * HSM certificate
    #
    #   * Parameter group
    #
    #   * Snapshot copy grant
    #
    #   For more information about Amazon Redshift resource types and
    #   constructing ARNs, go to [Specifying Policy Elements: Actions,
    #   Effects, Resources, and Principals][1] in the Amazon Redshift
    #   Cluster Management Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   The maximum number or response records to return in each call. If
    #   the number of remaining response records exceeds the specified
    #   `MaxRecords` value, a value is returned in a `marker` field of the
    #   response. You can retrieve the next set of records by retrying the
    #   command with the returned `marker` value.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `marker` parameter and retrying
    #   the command. If the `marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   A tag key or keys for which you want to return all matching
    #   resources that are associated with the specified key or keys. For
    #   example, suppose that you have resources tagged with keys called
    #   `owner` and `environment`. If you specify both of these tag keys in
    #   the request, Amazon Redshift returns a response with all resources
    #   that have either or both of these tag keys associated with them.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tag_values
    #   A tag value or values for which you want to return all matching
    #   resources that are associated with the specified value or values.
    #   For example, suppose that you have resources tagged with values
    #   called `admin` and `test`. If you specify both of these tag values
    #   in the request, Amazon Redshift returns a response with all
    #   resources that have either or both of these tag values associated
    #   with them.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DescribeTagsMessage AWS API Documentation
    #
    class DescribeTagsMessage < Struct.new(
      :resource_name,
      :resource_type,
      :max_records,
      :marker,
      :tag_keys,
      :tag_values)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableLoggingMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster on which logging is to be stopped.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableLoggingMessage AWS API Documentation
    #
    class DisableLoggingMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # @note When making an API call, you may pass DisableSnapshotCopyMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the source cluster that you want to disable
    #   copying of snapshots to a destination region.
    #
    #   Constraints: Must be the valid name of an existing cluster that has
    #   cross-region snapshot copy enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableSnapshotCopyMessage AWS API Documentation
    #
    class DisableSnapshotCopyMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/DisableSnapshotCopyResult AWS API Documentation
    #
    class DisableSnapshotCopyResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes an Amazon EC2 security group.
    #
    # @!attribute [rw] status
    #   The status of the EC2 security group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the EC2 Security Group.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS ID of the owner of the EC2 security group specified in the
    #   `EC2SecurityGroupName` field.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the EC2 security group.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EC2SecurityGroup AWS API Documentation
    #
    class EC2SecurityGroup < Struct.new(
      :status,
      :ec2_security_group_name,
      :ec2_security_group_owner_id,
      :tags)
      include Aws::Structure
    end

    # Describes the status of the elastic IP (EIP) address.
    #
    # @!attribute [rw] elastic_ip
    #   The elastic IP (EIP) address for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the elastic IP (EIP) address.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ElasticIpStatus AWS API Documentation
    #
    class ElasticIpStatus < Struct.new(
      :elastic_ip,
      :status)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableLoggingMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         bucket_name: "String", # required
    #         s3_key_prefix: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster on which logging is to be started.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @!attribute [rw] bucket_name
    #   The name of an existing S3 bucket where the log files are to be
    #   stored.
    #
    #   Constraints:
    #
    #   * Must be in the same region as the cluster
    #
    #   * The cluster must have read bucket and put object permissions
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix applied to the log file names.
    #
    #   Constraints:
    #
    #   * Cannot exceed 512 characters
    #
    #   * Cannot contain spaces( ), double quotes ("), single quotes ('),
    #     a backslash (\\), or control characters. The hexadecimal codes for
    #     invalid characters are:
    #
    #     * x00 to x20
    #
    #     * x22
    #
    #     * x27
    #
    #     * x5c
    #
    #     * x7f or larger
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableLoggingMessage AWS API Documentation
    #
    class EnableLoggingMessage < Struct.new(
      :cluster_identifier,
      :bucket_name,
      :s3_key_prefix)
      include Aws::Structure
    end

    # @note When making an API call, you may pass EnableSnapshotCopyMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         destination_region: "String", # required
    #         retention_period: 1,
    #         snapshot_copy_grant_name: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the source cluster to copy snapshots from.
    #
    #   Constraints: Must be the valid name of an existing cluster that does
    #   not already have cross-region snapshot copy enabled.
    #   @return [String]
    #
    # @!attribute [rw] destination_region
    #   The destination region that you want to copy snapshots to.
    #
    #   Constraints: Must be the name of a valid region. For more
    #   information, see [Regions and Endpoints][1] in the Amazon Web
    #   Services General Reference.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/general/latest/gr/rande.html#redshift_region
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   The number of days to retain automated snapshots in the destination
    #   region after they are copied from the source region.
    #
    #   Default: 7.
    #
    #   Constraints: Must be at least 1 and no more than 35.
    #   @return [Integer]
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant to use when snapshots of an AWS
    #   KMS-encrypted cluster are copied to the destination region.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableSnapshotCopyMessage AWS API Documentation
    #
    class EnableSnapshotCopyMessage < Struct.new(
      :cluster_identifier,
      :destination_region,
      :retention_period,
      :snapshot_copy_grant_name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EnableSnapshotCopyResult AWS API Documentation
    #
    class EnableSnapshotCopyResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes a connection endpoint.
    #
    # @!attribute [rw] address
    #   The DNS address of the Cluster.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the database engine is listening on.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Endpoint AWS API Documentation
    #
    class Endpoint < Struct.new(
      :address,
      :port)
      include Aws::Structure
    end

    # Describes an event.
    #
    # @!attribute [rw] source_identifier
    #   The identifier for the source of the event.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The source type for this event.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The text of this event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   A list of the event categories.
    #
    #   Values: Configuration, Management, Monitoring, Security
    #   @return [Array<String>]
    #
    # @!attribute [rw] severity
    #   The severity of the event.
    #
    #   Values: ERROR, INFO
    #   @return [String]
    #
    # @!attribute [rw] date
    #   The date and time of the event.
    #   @return [Time]
    #
    # @!attribute [rw] event_id
    #   The identifier of the event.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Event AWS API Documentation
    #
    class Event < Struct.new(
      :source_identifier,
      :source_type,
      :message,
      :event_categories,
      :severity,
      :date,
      :event_id)
      include Aws::Structure
    end

    # Describes event categories.
    #
    # @!attribute [rw] source_type
    #   The source type, such as cluster or cluster-snapshot, that the
    #   returned categories belong to.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   The events in the event category.
    #   @return [Array<Types::EventInfoMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventCategoriesMap AWS API Documentation
    #
    class EventCategoriesMap < Struct.new(
      :source_type,
      :events)
      include Aws::Structure
    end

    # @!attribute [rw] event_categories_map_list
    #   A list of event categories descriptions.
    #   @return [Array<Types::EventCategoriesMap>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventCategoriesMessage AWS API Documentation
    #
    class EventCategoriesMessage < Struct.new(
      :event_categories_map_list)
      include Aws::Structure
    end

    # Describes event information.
    #
    # @!attribute [rw] event_id
    #   The identifier of an Amazon Redshift event.
    #   @return [String]
    #
    # @!attribute [rw] event_categories
    #   The category of an Amazon Redshift event.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_description
    #   The description of an Amazon Redshift event.
    #   @return [String]
    #
    # @!attribute [rw] severity
    #   The severity of the event.
    #
    #   Values: ERROR, INFO
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventInfoMap AWS API Documentation
    #
    class EventInfoMap < Struct.new(
      :event_id,
      :event_categories,
      :event_description,
      :severity)
      include Aws::Structure
    end

    # Describes event subscriptions.
    #
    # @!attribute [rw] customer_aws_id
    #   The AWS customer account associated with the Amazon Redshift event
    #   notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] cust_subscription_id
    #   The name of the Amazon Redshift event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the Amazon SNS topic used by the
    #   event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the Amazon Redshift event notification subscription.
    #
    #   Constraints:
    #
    #   * Can be one of the following: active \| no-permission \|
    #     topic-not-exist
    #
    #   * The status "no-permission" indicates that Amazon Redshift no
    #     longer has permission to post to the Amazon SNS topic. The status
    #     "topic-not-exist" indicates that the topic was deleted after the
    #     subscription was created.
    #   @return [String]
    #
    # @!attribute [rw] subscription_creation_time
    #   The date and time the Amazon Redshift event notification
    #   subscription was created.
    #   @return [Time]
    #
    # @!attribute [rw] source_type
    #   The source type of the events returned the Amazon Redshift event
    #   notification, such as cluster, or cluster-snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_ids_list
    #   A list of the sources that publish events to the Amazon Redshift
    #   event notification subscription.
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories_list
    #   The list of Amazon Redshift event categories specified in the event
    #   notification subscription.
    #
    #   Values: Configuration, Management, Monitoring, Security
    #   @return [Array<String>]
    #
    # @!attribute [rw] severity
    #   The event severity specified in the Amazon Redshift event
    #   notification subscription.
    #
    #   Values: ERROR, INFO
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   A Boolean value indicating whether the subscription is enabled.
    #   `true` indicates the subscription is enabled.
    #   @return [Boolean]
    #
    # @!attribute [rw] tags
    #   The list of tags for the event subscription.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventSubscription AWS API Documentation
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
      :severity,
      :enabled,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] event_subscriptions_list
    #   A list of event subscriptions.
    #   @return [Array<Types::EventSubscription>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventSubscriptionsMessage AWS API Documentation
    #
    class EventSubscriptionsMessage < Struct.new(
      :marker,
      :event_subscriptions_list)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] events
    #   A list of `Event` instances.
    #   @return [Array<Types::Event>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/EventsMessage AWS API Documentation
    #
    class EventsMessage < Struct.new(
      :marker,
      :events)
      include Aws::Structure
    end

    # The request parameters to get cluster credentials.
    #
    # @note When making an API call, you may pass GetClusterCredentialsMessage
    #   data as a hash:
    #
    #       {
    #         db_user: "String", # required
    #         db_name: "String",
    #         cluster_identifier: "String", # required
    #         duration_seconds: 1,
    #         auto_create: false,
    #         db_groups: ["String"],
    #       }
    #
    # @!attribute [rw] db_user
    #   The name of a database user. If a user name matching `DbUser` exists
    #   in the database, the temporary user credentials have the same
    #   permissions as the existing user. If `DbUser` doesn't exist in the
    #   database and `Autocreate` is `True`, a new user is created using the
    #   value for `DbUser` with PUBLIC permissions. If a database user
    #   matching the value for `DbUser` doesn't exist and `Autocreate` is
    #   `False`, then the command succeeds but the connection attempt will
    #   fail because the user doesn't exist in the database.
    #
    #   For more information, see [CREATE USER][1] in the Amazon Redshift
    #   Database Developer Guide.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens. The user name
    #     can't be `PUBLIC`.
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus
    #     sign, period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found
    #     in [Reserved Words][2] in the Amazon Redshift Database Developer
    #     Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_CREATE_USER.html
    #   [2]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] db_name
    #   The name of a database that `DbUser` is authorized to log on to. If
    #   `DbName` is not specified, `DbUser` can log on to any existing
    #   database.
    #
    #   Constraints:
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus
    #     sign, period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found
    #     in [Reserved Words][1] in the Amazon Redshift Database Developer
    #     Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster that contains the database for
    #   which your are requesting credentials. This parameter is case
    #   sensitive.
    #   @return [String]
    #
    # @!attribute [rw] duration_seconds
    #   The number of seconds until the returned temporary password expires.
    #
    #   Constraint: minimum 900, maximum 3600.
    #
    #   Default: 900
    #   @return [Integer]
    #
    # @!attribute [rw] auto_create
    #   Create a database user with the name specified for the user named in
    #   `DbUser` if one does not exist.
    #   @return [Boolean]
    #
    # @!attribute [rw] db_groups
    #   A list of the names of existing database groups that the user named
    #   in `DbUser` will join for the current session, in addition to any
    #   group memberships for an existing user. If not specified, a new user
    #   is added only to PUBLIC.
    #
    #   Database group name constraints
    #
    #   * Must be 1 to 64 alphanumeric characters or hyphens
    #
    #   * Must contain only lowercase letters, numbers, underscore, plus
    #     sign, period (dot), at symbol (@), or hyphen.
    #
    #   * First character must be a letter.
    #
    #   * Must not contain a colon ( : ) or slash ( / ).
    #
    #   * Cannot be a reserved word. A list of reserved words can be found
    #     in [Reserved Words][1] in the Amazon Redshift Database Developer
    #     Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/dg/r_pg_keywords.html
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetClusterCredentialsMessage AWS API Documentation
    #
    class GetClusterCredentialsMessage < Struct.new(
      :db_user,
      :db_name,
      :cluster_identifier,
      :duration_seconds,
      :auto_create,
      :db_groups)
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetReservedNodeExchangeOfferingsInputMessage
    #   data as a hash:
    #
    #       {
    #         reserved_node_id: "String", # required
    #         max_records: 1,
    #         marker: "String",
    #       }
    #
    # @!attribute [rw] reserved_node_id
    #   A string representing the node identifier for the DC1 Reserved Node
    #   to be exchanged.
    #   @return [String]
    #
    # @!attribute [rw] max_records
    #   An integer setting the maximum number of ReservedNodeOfferings to
    #   retrieve.
    #   @return [Integer]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   ReservedNodeOfferings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetReservedNodeExchangeOfferingsInputMessage AWS API Documentation
    #
    class GetReservedNodeExchangeOfferingsInputMessage < Struct.new(
      :reserved_node_id,
      :max_records,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point for
    #   returning a set of response records. When the results of a
    #   `GetReservedNodeExchangeOfferings` request exceed the value
    #   specified in MaxRecords, Amazon Redshift returns a value in the
    #   marker field of the response. You can retrieve the next set of
    #   response records by providing the returned marker value in the
    #   marker parameter and retrying the request.
    #   @return [String]
    #
    # @!attribute [rw] reserved_node_offerings
    #   Returns an array of ReservedNodeOffering objects.
    #   @return [Array<Types::ReservedNodeOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/GetReservedNodeExchangeOfferingsOutputMessage AWS API Documentation
    #
    class GetReservedNodeExchangeOfferingsOutputMessage < Struct.new(
      :marker,
      :reserved_node_offerings)
      include Aws::Structure
    end

    # Returns information about an HSM client certificate. The certificate
    # is stored in a secure Hardware Storage Module (HSM), and used by the
    # Amazon Redshift cluster to encrypt data files.
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   The identifier of the HSM client certificate.
    #   @return [String]
    #
    # @!attribute [rw] hsm_client_certificate_public_key
    #   The public key that the Amazon Redshift cluster will use to connect
    #   to the HSM. You must register the public key in the HSM.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the HSM client certificate.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/HsmClientCertificate AWS API Documentation
    #
    class HsmClientCertificate < Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_client_certificate_public_key,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] hsm_client_certificates
    #   A list of the identifiers for one or more HSM client certificates
    #   used by Amazon Redshift clusters to store and retrieve database
    #   encryption keys in an HSM.
    #   @return [Array<Types::HsmClientCertificate>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/HsmClientCertificateMessage AWS API Documentation
    #
    class HsmClientCertificateMessage < Struct.new(
      :marker,
      :hsm_client_certificates)
      include Aws::Structure
    end

    # Returns information about an HSM configuration, which is an object
    # that describes to Amazon Redshift clusters the information they
    # require to connect to an HSM where they can store database encryption
    # keys.
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   The name of the Amazon Redshift HSM configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the HSM configuration.
    #   @return [String]
    #
    # @!attribute [rw] hsm_ip_address
    #   The IP address that the Amazon Redshift cluster must use to access
    #   the HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_partition_name
    #   The name of the partition in the HSM where the Amazon Redshift
    #   clusters will store their database encryption keys.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the HSM configuration.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/HsmConfiguration AWS API Documentation
    #
    class HsmConfiguration < Struct.new(
      :hsm_configuration_identifier,
      :description,
      :hsm_ip_address,
      :hsm_partition_name,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configurations
    #   A list of `HsmConfiguration` objects.
    #   @return [Array<Types::HsmConfiguration>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/HsmConfigurationMessage AWS API Documentation
    #
    class HsmConfigurationMessage < Struct.new(
      :marker,
      :hsm_configurations)
      include Aws::Structure
    end

    # Describes the status of changes to HSM settings.
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and
    #   store keys in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Reports whether the Amazon Redshift cluster has finished applying
    #   any HSM settings changes specified in a modify cluster command.
    #
    #   Values: active, applying
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/HsmStatus AWS API Documentation
    #
    class HsmStatus < Struct.new(
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :status)
      include Aws::Structure
    end

    # Describes an IP range used in a security group.
    #
    # @!attribute [rw] status
    #   The status of the IP range, for example, "authorized".
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   The IP range in Classless Inter-Domain Routing (CIDR) notation.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the IP range.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/IPRange AWS API Documentation
    #
    class IPRange < Struct.new(
      :status,
      :cidrip,
      :tags)
      include Aws::Structure
    end

    # Describes the status of logging for a cluster.
    #
    # @!attribute [rw] logging_enabled
    #   `true` if logging is on, `false` if logging is off.
    #   @return [Boolean]
    #
    # @!attribute [rw] bucket_name
    #   The name of the S3 bucket where the log files are stored.
    #   @return [String]
    #
    # @!attribute [rw] s3_key_prefix
    #   The prefix applied to the log file names.
    #   @return [String]
    #
    # @!attribute [rw] last_successful_delivery_time
    #   The last time that logs were delivered.
    #   @return [Time]
    #
    # @!attribute [rw] last_failure_time
    #   The last time when logs failed to be delivered.
    #   @return [Time]
    #
    # @!attribute [rw] last_failure_message
    #   The message indicating that logs failed to be delivered.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/LoggingStatus AWS API Documentation
    #
    class LoggingStatus < Struct.new(
      :logging_enabled,
      :bucket_name,
      :s3_key_prefix,
      :last_successful_delivery_time,
      :last_failure_time,
      :last_failure_message)
      include Aws::Structure
    end

    # Defines a maintenance track that determines which Amazon Redshift
    # version to apply during a maintenance window. If the value for
    # `MaintenanceTrack` is `current`, the cluster is updated to the most
    # recently certified maintenance release. If the value is `trailing`,
    # the cluster is updated to the previously certified maintenance
    # release.
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track. Possible values are `current` and
    #   `trailing`.
    #   @return [String]
    #
    # @!attribute [rw] database_version
    #   The version number for the cluster release.
    #   @return [String]
    #
    # @!attribute [rw] update_targets
    #   An array of UpdateTarget objects to update with the maintenance
    #   track.
    #   @return [Array<Types::UpdateTarget>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/MaintenanceTrack AWS API Documentation
    #
    class MaintenanceTrack < Struct.new(
      :maintenance_track_name,
      :database_version,
      :update_targets)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyClusterDbRevisionMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         revision_target: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of a cluster whose database revision you want
    #   to modify.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @!attribute [rw] revision_target
    #   The identifier of the database revision. You can retrieve this value
    #   from the response to the DescribeClusterDbRevisions request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterDbRevisionMessage AWS API Documentation
    #
    class ModifyClusterDbRevisionMessage < Struct.new(
      :cluster_identifier,
      :revision_target)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterDbRevisionResult AWS API Documentation
    #
    class ModifyClusterDbRevisionResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyClusterIamRolesMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         add_iam_roles: ["String"],
    #         remove_iam_roles: ["String"],
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster for which you want to associate
    #   or disassociate IAM roles.
    #   @return [String]
    #
    # @!attribute [rw] add_iam_roles
    #   Zero or more IAM roles to associate with the cluster. The roles must
    #   be in their Amazon Resource Name (ARN) format. You can associate up
    #   to 10 IAM roles with a single cluster in a single request.
    #   @return [Array<String>]
    #
    # @!attribute [rw] remove_iam_roles
    #   Zero or more IAM roles in ARN format to disassociate from the
    #   cluster. You can disassociate up to 10 IAM roles from a single
    #   cluster in a single request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterIamRolesMessage AWS API Documentation
    #
    class ModifyClusterIamRolesMessage < Struct.new(
      :cluster_identifier,
      :add_iam_roles,
      :remove_iam_roles)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterIamRolesResult AWS API Documentation
    #
    class ModifyClusterIamRolesResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyClusterMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1,
    #         cluster_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         master_user_password: "String",
    #         cluster_parameter_group_name: "String",
    #         automated_snapshot_retention_period: 1,
    #         preferred_maintenance_window: "String",
    #         cluster_version: "String",
    #         allow_version_upgrade: false,
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         new_cluster_identifier: "String",
    #         publicly_accessible: false,
    #         elastic_ip: "String",
    #         enhanced_vpc_routing: false,
    #         maintenance_track_name: "String",
    #         encrypted: false,
    #         kms_key_id: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster to be modified.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The new cluster type.
    #
    #   When you submit your cluster resize request, your existing cluster
    #   goes into a read-only mode. After Amazon Redshift provisions a new
    #   cluster based on your resize requirements, there will be outage for
    #   a period while the old cluster is deleted and your connection is
    #   switched to the new cluster. You can use DescribeResize to track the
    #   progress of the resize request.
    #
    #   Valid Values: ` multi-node | single-node `
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The new node type of the cluster. If you specify a new node type,
    #   you must also specify the number of nodes parameter.
    #
    #   When you submit your request to resize a cluster, Amazon Redshift
    #   sets access permissions for the cluster to read-only. After Amazon
    #   Redshift provisions a new cluster according to your resize
    #   requirements, there will be a temporary outage while the old cluster
    #   is deleted and your connection is switched to the new cluster. When
    #   the new connection is complete, the original access permissions for
    #   the cluster are restored. You can use DescribeResize to track the
    #   progress of the resize request.
    #
    #   Valid Values: `ds2.xlarge` \| `ds2.8xlarge` \| `dc1.large` \|
    #   `dc1.8xlarge` \| `dc2.large` \| `dc2.8xlarge`
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The new number of nodes of the cluster. If you specify a new number
    #   of nodes, you must also specify the node type parameter.
    #
    #   When you submit your request to resize a cluster, Amazon Redshift
    #   sets access permissions for the cluster to read-only. After Amazon
    #   Redshift provisions a new cluster according to your resize
    #   requirements, there will be a temporary outage while the old cluster
    #   is deleted and your connection is switched to the new cluster. When
    #   the new connection is complete, the original access permissions for
    #   the cluster are restored. You can use DescribeResize to track the
    #   progress of the resize request.
    #
    #   Valid Values: Integer greater than `0`.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of cluster security groups to be authorized on this cluster.
    #   This change is asynchronously applied as soon as possible.
    #
    #   Security groups currently associated with the cluster, and not in
    #   the list of groups to apply, will be revoked from the cluster.
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens
    #
    #   * First character must be a letter
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of virtual private cloud (VPC) security groups to be
    #   associated with the cluster. This change is asynchronously applied
    #   as soon as possible.
    #   @return [Array<String>]
    #
    # @!attribute [rw] master_user_password
    #   The new password for the cluster master user. This change is
    #   asynchronously applied as soon as possible. Between the time of the
    #   request and the completion of the request, the `MasterUserPassword`
    #   element exists in the `PendingModifiedValues` element of the
    #   operation response.
    #
    #   <note markdown="1"> Operations never return the password, so this operation provides a
    #   way to regain access to the master user account for a cluster if the
    #   password is lost.
    #
    #    </note>
    #
    #   Default: Uses existing setting.
    #
    #   Constraints:
    #
    #   * Must be between 8 and 64 characters in length.
    #
    #   * Must contain at least one uppercase letter.
    #
    #   * Must contain at least one lowercase letter.
    #
    #   * Must contain one number.
    #
    #   * Can be any printable ASCII character (ASCII code 33 to 126) except
    #     ' (single quote), " (double quote), \\, /, @, or space.
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_group_name
    #   The name of the cluster parameter group to apply to this cluster.
    #   This change is applied only after the cluster is rebooted. To reboot
    #   a cluster use RebootCluster.
    #
    #   Default: Uses existing setting.
    #
    #   Constraints: The cluster parameter group must be in the same
    #   parameter group family that matches the cluster version.
    #   @return [String]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the
    #   value is 0, automated snapshots are disabled. Even if automated
    #   snapshots are disabled, you can still create manual snapshots when
    #   you want with CreateClusterSnapshot.
    #
    #   If you decrease the automated snapshot retention period from its
    #   current value, existing automated snapshots that fall outside of the
    #   new retention period will be immediately deleted.
    #
    #   Default: Uses existing setting.
    #
    #   Constraints: Must be a value from 0 to 35.
    #   @return [Integer]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which system maintenance can
    #   occur, if necessary. If system maintenance is necessary during the
    #   window, it may result in an outage.
    #
    #   This maintenance window change is made immediately. If the new
    #   maintenance window indicates the current time, there must be at
    #   least 120 minutes between the current time and end of the window in
    #   order to ensure that pending changes are applied.
    #
    #   Default: Uses existing setting.
    #
    #   Format: ddd:hh24:mi-ddd:hh24:mi, for example `wed:07:30-wed:08:00`.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Must be at least 30 minutes.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The new version number of the Amazon Redshift engine to upgrade to.
    #
    #   For major version upgrades, if a non-default cluster parameter group
    #   is currently in use, a new cluster parameter group in the cluster
    #   parameter group family for the new version must be specified. The
    #   new cluster parameter group can be the default for that cluster
    #   parameter group family. For more information about parameters and
    #   parameter groups, go to [Amazon Redshift Parameter Groups][1] in the
    #   *Amazon Redshift Cluster Management Guide*.
    #
    #   Example: `1.0`
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #   @return [String]
    #
    # @!attribute [rw] allow_version_upgrade
    #   If `true`, major version upgrades will be applied automatically to
    #   the cluster during the maintenance window.
    #
    #   Default: `false`
    #   @return [Boolean]
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and
    #   store keys in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] new_cluster_identifier
    #   The new identifier for the cluster.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #
    #   Example: `examplecluster`
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   If `true`, the cluster can be accessed from a public network. Only
    #   clusters in VPCs can be set to be publicly available.
    #   @return [Boolean]
    #
    # @!attribute [rw] elastic_ip
    #   The Elastic IP (EIP) address for the cluster.
    #
    #   Constraints: The cluster must be provisioned in EC2-VPC and
    #   publicly-accessible through an Internet gateway. For more
    #   information about provisioning clusters in EC2-VPC, go to [Supported
    #   Platforms to Launch Your Cluster][1] in the Amazon Redshift Cluster
    #   Management Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#cluster-platforms
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name for the maintenance track that you want to assign for the
    #   cluster. This name change is asynchronous. The new track name stays
    #   in the `PendingModifiedValues` for the cluster until the next
    #   maintenance window. When the maintenance track changes, the cluster
    #   is switched to the latest cluster release available for the
    #   maintenance track. At this point, the maintenance track name is
    #   applied.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   Indicates whether the cluster is encrypted. If the cluster is
    #   encrypted and you provide a value for the `KmsKeyId` parameter, we
    #   will encrypt the cluster with the provided `KmsKeyId`. If you don't
    #   provide a `KmsKeyId`, we will encrypt with the default key. In the
    #   China region we will use legacy encryption if you specify that the
    #   cluster is encrypted.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key
    #   that you want to use to encrypt data in the cluster.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterMessage AWS API Documentation
    #
    class ModifyClusterMessage < Struct.new(
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :number_of_nodes,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :master_user_password,
      :cluster_parameter_group_name,
      :automated_snapshot_retention_period,
      :preferred_maintenance_window,
      :cluster_version,
      :allow_version_upgrade,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :new_cluster_identifier,
      :publicly_accessible,
      :elastic_ip,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :encrypted,
      :kms_key_id)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         parameters: [ # required
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             apply_type: "static", # accepts static, dynamic
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the parameter group to be modified.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   An array of parameters to be modified. A maximum of 20 parameters
    #   can be modified in a single request.
    #
    #   For each parameter to be modified, you must supply at least the
    #   parameter name and parameter value; other name-value pairs of the
    #   parameter are optional.
    #
    #   For the workload management (WLM) configuration, you must supply all
    #   the name-value pairs in the wlm\_json\_configuration parameter.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterParameterGroupMessage AWS API Documentation
    #
    class ModifyClusterParameterGroupMessage < Struct.new(
      :parameter_group_name,
      :parameters)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterResult AWS API Documentation
    #
    class ModifyClusterResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyClusterSubnetGroupMessage
    #   data as a hash:
    #
    #       {
    #         cluster_subnet_group_name: "String", # required
    #         description: "String",
    #         subnet_ids: ["String"], # required
    #       }
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the subnet group to be modified.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A text description of the subnet group to be modified.
    #   @return [String]
    #
    # @!attribute [rw] subnet_ids
    #   An array of VPC subnet IDs. A maximum of 20 subnets can be modified
    #   in a single request.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSubnetGroupMessage AWS API Documentation
    #
    class ModifyClusterSubnetGroupMessage < Struct.new(
      :cluster_subnet_group_name,
      :description,
      :subnet_ids)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_subnet_group
    #   Describes a subnet group.
    #   @return [Types::ClusterSubnetGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyClusterSubnetGroupResult AWS API Documentation
    #
    class ModifyClusterSubnetGroupResult < Struct.new(
      :cluster_subnet_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifyEventSubscriptionMessage
    #   data as a hash:
    #
    #       {
    #         subscription_name: "String", # required
    #         sns_topic_arn: "String",
    #         source_type: "String",
    #         source_ids: ["String"],
    #         event_categories: ["String"],
    #         severity: "String",
    #         enabled: false,
    #       }
    #
    # @!attribute [rw] subscription_name
    #   The name of the modified Amazon Redshift event notification
    #   subscription.
    #   @return [String]
    #
    # @!attribute [rw] sns_topic_arn
    #   The Amazon Resource Name (ARN) of the SNS topic to be used by the
    #   event notification subscription.
    #   @return [String]
    #
    # @!attribute [rw] source_type
    #   The type of source that will be generating the events. For example,
    #   if you want to be notified of events generated by a cluster, you
    #   would set this parameter to cluster. If this value is not specified,
    #   events are returned for all Amazon Redshift objects in your AWS
    #   account. You must specify a source type in order to specify source
    #   IDs.
    #
    #   Valid values: cluster, cluster-parameter-group,
    #   cluster-security-group, and cluster-snapshot.
    #   @return [String]
    #
    # @!attribute [rw] source_ids
    #   A list of one or more identifiers of Amazon Redshift source objects.
    #   All of the objects must be of the same type as was specified in the
    #   source type parameter. The event subscription will return only
    #   events generated by the specified objects. If not specified, then
    #   events are returned for all objects within the source type
    #   specified.
    #
    #   Example: my-cluster-1, my-cluster-2
    #
    #   Example: my-snapshot-20131010
    #   @return [Array<String>]
    #
    # @!attribute [rw] event_categories
    #   Specifies the Amazon Redshift event categories to be published by
    #   the event notification subscription.
    #
    #   Values: Configuration, Management, Monitoring, Security
    #   @return [Array<String>]
    #
    # @!attribute [rw] severity
    #   Specifies the Amazon Redshift event severity to be published by the
    #   event notification subscription.
    #
    #   Values: ERROR, INFO
    #   @return [String]
    #
    # @!attribute [rw] enabled
    #   A Boolean value indicating if the subscription is enabled. `true`
    #   indicates the subscription is enabled
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyEventSubscriptionMessage AWS API Documentation
    #
    class ModifyEventSubscriptionMessage < Struct.new(
      :subscription_name,
      :sns_topic_arn,
      :source_type,
      :source_ids,
      :event_categories,
      :severity,
      :enabled)
      include Aws::Structure
    end

    # @!attribute [rw] event_subscription
    #   Describes event subscriptions.
    #   @return [Types::EventSubscription]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifyEventSubscriptionResult AWS API Documentation
    #
    class ModifyEventSubscriptionResult < Struct.new(
      :event_subscription)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ModifySnapshotCopyRetentionPeriodMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         retention_period: 1, # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster for which you want to change
    #   the retention period for automated snapshots that are copied to a
    #   destination region.
    #
    #   Constraints: Must be the valid name of an existing cluster that has
    #   cross-region snapshot copy enabled.
    #   @return [String]
    #
    # @!attribute [rw] retention_period
    #   The number of days to retain automated snapshots in the destination
    #   region after they are copied from the source region.
    #
    #   If you decrease the retention period for automated snapshots that
    #   are copied to a destination region, Amazon Redshift will delete any
    #   existing automated snapshots that were copied to the destination
    #   region and that fall outside of the new retention period.
    #
    #   Constraints: Must be at least 1 and no more than 35.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifySnapshotCopyRetentionPeriodMessage AWS API Documentation
    #
    class ModifySnapshotCopyRetentionPeriodMessage < Struct.new(
      :cluster_identifier,
      :retention_period)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ModifySnapshotCopyRetentionPeriodResult AWS API Documentation
    #
    class ModifySnapshotCopyRetentionPeriodResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes an orderable cluster option.
    #
    # @!attribute [rw] cluster_version
    #   The version of the orderable cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The cluster type, for example `multi-node`.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type for the orderable cluster.
    #   @return [String]
    #
    # @!attribute [rw] availability_zones
    #   A list of availability zones for the orderable cluster.
    #   @return [Array<Types::AvailabilityZone>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/OrderableClusterOption AWS API Documentation
    #
    class OrderableClusterOption < Struct.new(
      :cluster_version,
      :cluster_type,
      :node_type,
      :availability_zones)
      include Aws::Structure
    end

    # Contains the output from the DescribeOrderableClusterOptions action.
    #
    # @!attribute [rw] orderable_cluster_options
    #   An `OrderableClusterOption` structure containing information about
    #   orderable options for the cluster.
    #   @return [Array<Types::OrderableClusterOption>]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/OrderableClusterOptionsMessage AWS API Documentation
    #
    class OrderableClusterOptionsMessage < Struct.new(
      :orderable_cluster_options,
      :marker)
      include Aws::Structure
    end

    # Describes a parameter in a cluster parameter group.
    #
    # @note When making an API call, you may pass Parameter
    #   data as a hash:
    #
    #       {
    #         parameter_name: "String",
    #         parameter_value: "String",
    #         description: "String",
    #         source: "String",
    #         data_type: "String",
    #         allowed_values: "String",
    #         apply_type: "static", # accepts static, dynamic
    #         is_modifiable: false,
    #         minimum_engine_version: "String",
    #       }
    #
    # @!attribute [rw] parameter_name
    #   The name of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] parameter_value
    #   The value of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A description of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] source
    #   The source of the parameter value, such as "engine-default" or
    #   "user".
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the parameter.
    #   @return [String]
    #
    # @!attribute [rw] allowed_values
    #   The valid range of values for the parameter.
    #   @return [String]
    #
    # @!attribute [rw] apply_type
    #   Specifies how to apply the WLM configuration parameter. Some
    #   properties can be applied dynamically, while other properties
    #   require that any associated clusters be rebooted for the
    #   configuration changes to be applied. For more information about
    #   parameters and parameter groups, go to [Amazon Redshift Parameter
    #   Groups][1] in the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #   @return [String]
    #
    # @!attribute [rw] is_modifiable
    #   If `true`, the parameter can be modified. Some parameters have
    #   security or operational implications that prevent them from being
    #   changed.
    #   @return [Boolean]
    #
    # @!attribute [rw] minimum_engine_version
    #   The earliest engine version to which the parameter can apply.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Parameter AWS API Documentation
    #
    class Parameter < Struct.new(
      :parameter_name,
      :parameter_value,
      :description,
      :source,
      :data_type,
      :allowed_values,
      :apply_type,
      :is_modifiable,
      :minimum_engine_version)
      include Aws::Structure
    end

    # Describes cluster attributes that are in a pending state. A change to
    # one or more the attributes was requested and is in progress or will be
    # applied.
    #
    # @!attribute [rw] master_user_password
    #   The pending or in-progress change of the master user password for
    #   the cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The pending or in-progress change of the cluster's node type.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The pending or in-progress change of the number of nodes in the
    #   cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_type
    #   The pending or in-progress change of the cluster type.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The pending or in-progress change of the service version.
    #   @return [String]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The pending or in-progress change of the automated snapshot
    #   retention period.
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_identifier
    #   The pending or in-progress change of the new identifier for the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   The pending or in-progress change of the ability to connect to the
    #   cluster from the public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track that the cluster will change to
    #   during the next maintenance window.
    #   @return [String]
    #
    # @!attribute [rw] encryption_type
    #   The encryption type for a cluster. Possible values are: KMS and
    #   None. For the China region the possible values are None, and Legacy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PendingModifiedValues AWS API Documentation
    #
    class PendingModifiedValues < Struct.new(
      :master_user_password,
      :node_type,
      :number_of_nodes,
      :cluster_type,
      :cluster_version,
      :automated_snapshot_retention_period,
      :cluster_identifier,
      :publicly_accessible,
      :enhanced_vpc_routing,
      :maintenance_track_name,
      :encryption_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass PurchaseReservedNodeOfferingMessage
    #   data as a hash:
    #
    #       {
    #         reserved_node_offering_id: "String", # required
    #         node_count: 1,
    #       }
    #
    # @!attribute [rw] reserved_node_offering_id
    #   The unique identifier of the reserved node offering you want to
    #   purchase.
    #   @return [String]
    #
    # @!attribute [rw] node_count
    #   The number of reserved nodes that you want to purchase.
    #
    #   Default: `1`
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PurchaseReservedNodeOfferingMessage AWS API Documentation
    #
    class PurchaseReservedNodeOfferingMessage < Struct.new(
      :reserved_node_offering_id,
      :node_count)
      include Aws::Structure
    end

    # @!attribute [rw] reserved_node
    #   Describes a reserved node. You can call the
    #   DescribeReservedNodeOfferings API to obtain the available reserved
    #   node offerings.
    #   @return [Types::ReservedNode]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/PurchaseReservedNodeOfferingResult AWS API Documentation
    #
    class PurchaseReservedNodeOfferingResult < Struct.new(
      :reserved_node)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RebootClusterMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The cluster identifier.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RebootClusterMessage AWS API Documentation
    #
    class RebootClusterMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RebootClusterResult AWS API Documentation
    #
    class RebootClusterResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes a recurring charge.
    #
    # @!attribute [rw] recurring_charge_amount
    #   The amount charged per the period of time specified by the recurring
    #   charge frequency.
    #   @return [Float]
    #
    # @!attribute [rw] recurring_charge_frequency
    #   The frequency at which the recurring charge amount is applied.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RecurringCharge AWS API Documentation
    #
    class RecurringCharge < Struct.new(
      :recurring_charge_amount,
      :recurring_charge_frequency)
      include Aws::Structure
    end

    # Describes a reserved node. You can call the
    # DescribeReservedNodeOfferings API to obtain the available reserved
    # node offerings.
    #
    # @!attribute [rw] reserved_node_id
    #   The unique identifier for the reservation.
    #   @return [String]
    #
    # @!attribute [rw] reserved_node_offering_id
    #   The identifier for the reserved node offering.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type of the reserved node.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   The time the reservation started. You purchase a reserved node
    #   offering for a duration. This is the start time of that duration.
    #   @return [Time]
    #
    # @!attribute [rw] duration
    #   The duration of the node reservation in seconds.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The fixed cost Amazon Redshift charges you for this reserved node.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The hourly rate Amazon Redshift charges you for this reserved node.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the reserved cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_count
    #   The number of reserved compute nodes.
    #   @return [Integer]
    #
    # @!attribute [rw] state
    #   The state of the reserved compute node.
    #
    #   Possible Values:
    #
    #   * pending-payment-This reserved node has recently been purchased,
    #     and the sale has been approved, but payment has not yet been
    #     confirmed.
    #
    #   * active-This reserved node is owned by the caller and is available
    #     for use.
    #
    #   * payment-failed-Payment failed for the purchase attempt.
    #
    #   * retired-The reserved node is no longer available.
    #
    #   * exchanging-The owner is exchanging the reserved node for another
    #     reserved node.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The anticipated utilization of the reserved node, as defined in the
    #   reserved node offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The recurring charges for the reserved node.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] reserved_node_offering_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ReservedNode AWS API Documentation
    #
    class ReservedNode < Struct.new(
      :reserved_node_id,
      :reserved_node_offering_id,
      :node_type,
      :start_time,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :node_count,
      :state,
      :offering_type,
      :recurring_charges,
      :reserved_node_offering_type)
      include Aws::Structure
    end

    # Describes a reserved node offering.
    #
    # @!attribute [rw] reserved_node_offering_id
    #   The offering identifier.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type offered by the reserved node offering.
    #   @return [String]
    #
    # @!attribute [rw] duration
    #   The duration, in seconds, for which the offering will reserve the
    #   node.
    #   @return [Integer]
    #
    # @!attribute [rw] fixed_price
    #   The upfront fixed charge you will pay to purchase the specific
    #   reserved node offering.
    #   @return [Float]
    #
    # @!attribute [rw] usage_price
    #   The rate you are charged for each hour the cluster that is using the
    #   offering is running.
    #   @return [Float]
    #
    # @!attribute [rw] currency_code
    #   The currency code for the compute nodes offering.
    #   @return [String]
    #
    # @!attribute [rw] offering_type
    #   The anticipated utilization of the reserved node, as defined in the
    #   reserved node offering.
    #   @return [String]
    #
    # @!attribute [rw] recurring_charges
    #   The charge to your account regardless of whether you are creating
    #   any clusters using the node offering. Recurring charges are only in
    #   effect for heavy-utilization reserved nodes.
    #   @return [Array<Types::RecurringCharge>]
    #
    # @!attribute [rw] reserved_node_offering_type
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ReservedNodeOffering AWS API Documentation
    #
    class ReservedNodeOffering < Struct.new(
      :reserved_node_offering_id,
      :node_type,
      :duration,
      :fixed_price,
      :usage_price,
      :currency_code,
      :offering_type,
      :recurring_charges,
      :reserved_node_offering_type)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] reserved_node_offerings
    #   A list of `ReservedNodeOffering` objects.
    #   @return [Array<Types::ReservedNodeOffering>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ReservedNodeOfferingsMessage AWS API Documentation
    #
    class ReservedNodeOfferingsMessage < Struct.new(
      :marker,
      :reserved_node_offerings)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] reserved_nodes
    #   The list of `ReservedNode` objects.
    #   @return [Array<Types::ReservedNode>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ReservedNodesMessage AWS API Documentation
    #
    class ReservedNodesMessage < Struct.new(
      :marker,
      :reserved_nodes)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResetClusterParameterGroupMessage
    #   data as a hash:
    #
    #       {
    #         parameter_group_name: "String", # required
    #         reset_all_parameters: false,
    #         parameters: [
    #           {
    #             parameter_name: "String",
    #             parameter_value: "String",
    #             description: "String",
    #             source: "String",
    #             data_type: "String",
    #             allowed_values: "String",
    #             apply_type: "static", # accepts static, dynamic
    #             is_modifiable: false,
    #             minimum_engine_version: "String",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] parameter_group_name
    #   The name of the cluster parameter group to be reset.
    #   @return [String]
    #
    # @!attribute [rw] reset_all_parameters
    #   If `true`, all parameters in the specified parameter group will be
    #   reset to their default values.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] parameters
    #   An array of names of parameters to be reset. If *ResetAllParameters*
    #   option is not used, then at least one parameter name must be
    #   supplied.
    #
    #   Constraints: A maximum of 20 parameters can be reset in a single
    #   request.
    #   @return [Array<Types::Parameter>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResetClusterParameterGroupMessage AWS API Documentation
    #
    class ResetClusterParameterGroupMessage < Struct.new(
      :parameter_group_name,
      :reset_all_parameters,
      :parameters)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ResizeClusterMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         cluster_type: "String",
    #         node_type: "String",
    #         number_of_nodes: 1, # required
    #         classic: false,
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier for the cluster to resize.
    #   @return [String]
    #
    # @!attribute [rw] cluster_type
    #   The new cluster type for the specified cluster.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The new node type for the nodes you are adding.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The new number of nodes for the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] classic
    #   A boolean value indicating whether the resize operation is using the
    #   classic resize process. If you don't provide this parameter or set
    #   the value to `false` the resize type is elastic.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResizeClusterMessage AWS API Documentation
    #
    class ResizeClusterMessage < Struct.new(
      :cluster_identifier,
      :cluster_type,
      :node_type,
      :number_of_nodes,
      :classic)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResizeClusterResult AWS API Documentation
    #
    class ResizeClusterResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes the result of a cluster resize operation.
    #
    # @!attribute [rw] target_node_type
    #   The node type that the cluster will have after the resize operation
    #   is complete.
    #   @return [String]
    #
    # @!attribute [rw] target_number_of_nodes
    #   The number of nodes that the cluster will have after the resize
    #   operation is complete.
    #   @return [Integer]
    #
    # @!attribute [rw] target_cluster_type
    #   The cluster type after the resize operation is complete.
    #
    #   Valid Values: `multi-node` \| `single-node`
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the resize operation.
    #
    #   Valid Values: `NONE` \| `IN_PROGRESS` \| `FAILED` \| `SUCCEEDED`
    #   @return [String]
    #
    # @!attribute [rw] import_tables_completed
    #   The names of tables that have been completely imported .
    #
    #   Valid Values: List of table names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_tables_in_progress
    #   The names of tables that are being currently imported.
    #
    #   Valid Values: List of table names.
    #   @return [Array<String>]
    #
    # @!attribute [rw] import_tables_not_started
    #   The names of tables that have not been yet imported.
    #
    #   Valid Values: List of table names
    #   @return [Array<String>]
    #
    # @!attribute [rw] avg_resize_rate_in_mega_bytes_per_second
    #   The average rate of the resize operation over the last few minutes,
    #   measured in megabytes per second. After the resize operation
    #   completes, this value shows the average rate of the entire resize
    #   operation.
    #   @return [Float]
    #
    # @!attribute [rw] total_resize_data_in_mega_bytes
    #   The estimated total amount of data, in megabytes, on the cluster
    #   before the resize operation began.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   While the resize operation is in progress, this value shows the
    #   current amount of data, in megabytes, that has been processed so
    #   far. When the resize operation is complete, this value shows the
    #   total amount of data, in megabytes, on the cluster, which may be
    #   more or less than TotalResizeDataInMegaBytes (the estimated total
    #   amount of data before resize).
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of seconds that have elapsed since the resize operation
    #   began. After the resize operation completes, this value shows the
    #   total actual time, in seconds, for the resize operation.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_time_to_completion_in_seconds
    #   The estimated time remaining, in seconds, until the resize operation
    #   is complete. This value is calculated based on the average resize
    #   rate and the estimated amount of data remaining to be processed.
    #   Once the resize operation is complete, this value will be 0.
    #   @return [Integer]
    #
    # @!attribute [rw] resize_type
    #   An enum with possible values of ClassicResize and ElasticResize.
    #   These values describe the type of resize operation being performed.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   An optional string to provide additional details about the resize
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] target_encryption_type
    #   The type of encryption for the cluster after the resize is complete.
    #
    #   Possible values are `KMS` and `None`. In the China region possible
    #   values are: `Legacy` and `None`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/ResizeProgressMessage AWS API Documentation
    #
    class ResizeProgressMessage < Struct.new(
      :target_node_type,
      :target_number_of_nodes,
      :target_cluster_type,
      :status,
      :import_tables_completed,
      :import_tables_in_progress,
      :import_tables_not_started,
      :avg_resize_rate_in_mega_bytes_per_second,
      :total_resize_data_in_mega_bytes,
      :progress_in_mega_bytes,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds,
      :resize_type,
      :message,
      :target_encryption_type)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreFromClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String",
    #         port: 1,
    #         availability_zone: "String",
    #         allow_version_upgrade: false,
    #         cluster_subnet_group_name: "String",
    #         publicly_accessible: false,
    #         owner_account: "String",
    #         hsm_client_certificate_identifier: "String",
    #         hsm_configuration_identifier: "String",
    #         elastic_ip: "String",
    #         cluster_parameter_group_name: "String",
    #         cluster_security_groups: ["String"],
    #         vpc_security_group_ids: ["String"],
    #         preferred_maintenance_window: "String",
    #         automated_snapshot_retention_period: 1,
    #         kms_key_id: "String",
    #         node_type: "String",
    #         enhanced_vpc_routing: false,
    #         additional_info: "String",
    #         iam_roles: ["String"],
    #         maintenance_track_name: "String",
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster that will be created from restoring
    #   the snapshot.
    #
    #   Constraints:
    #
    #   * Must contain from 1 to 63 alphanumeric characters or hyphens.
    #
    #   * Alphabetic characters must be lowercase.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #   * Must be unique for all clusters within an AWS account.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The name of the snapshot from which to create the new cluster. This
    #   parameter isn't case sensitive.
    #
    #   Example: `my-snapshot-id`
    #   @return [String]
    #
    # @!attribute [rw] snapshot_cluster_identifier
    #   The name of the cluster the source snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port number on which the cluster accepts connections.
    #
    #   Default: The same port as the original cluster.
    #
    #   Constraints: Must be between `1115` and `65535`.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Amazon EC2 Availability Zone in which to restore the cluster.
    #
    #   Default: A random, system-chosen Availability Zone.
    #
    #   Example: `us-east-1a`
    #   @return [String]
    #
    # @!attribute [rw] allow_version_upgrade
    #   If `true`, major version upgrades can be applied during the
    #   maintenance window to the Amazon Redshift engine that is running on
    #   the cluster.
    #
    #   Default: `true`
    #   @return [Boolean]
    #
    # @!attribute [rw] cluster_subnet_group_name
    #   The name of the subnet group where you want to cluster restored.
    #
    #   A snapshot of cluster in VPC can be restored only in VPC. Therefore,
    #   you must provide subnet group name where you want the cluster
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] publicly_accessible
    #   If `true`, the cluster can be accessed from a public network.
    #   @return [Boolean]
    #
    # @!attribute [rw] owner_account
    #   The AWS customer account used to create or copy the snapshot.
    #   Required if you are restoring a snapshot you do not own, optional if
    #   you own the snapshot.
    #   @return [String]
    #
    # @!attribute [rw] hsm_client_certificate_identifier
    #   Specifies the name of the HSM client certificate the Amazon Redshift
    #   cluster uses to retrieve the data encryption keys stored in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] hsm_configuration_identifier
    #   Specifies the name of the HSM configuration that contains the
    #   information the Amazon Redshift cluster can use to retrieve and
    #   store keys in an HSM.
    #   @return [String]
    #
    # @!attribute [rw] elastic_ip
    #   The elastic IP (EIP) address for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_parameter_group_name
    #   The name of the parameter group to be associated with this cluster.
    #
    #   Default: The default Amazon Redshift cluster parameter group. For
    #   information about the default parameter group, go to [Working with
    #   Amazon Redshift Parameter Groups][1].
    #
    #   Constraints:
    #
    #   * Must be 1 to 255 alphanumeric characters or hyphens.
    #
    #   * First character must be a letter.
    #
    #   * Cannot end with a hyphen or contain two consecutive hyphens.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html
    #   @return [String]
    #
    # @!attribute [rw] cluster_security_groups
    #   A list of security groups to be associated with this cluster.
    #
    #   Default: The default cluster security group for Amazon Redshift.
    #
    #   Cluster security groups only apply to clusters outside of VPCs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] vpc_security_group_ids
    #   A list of Virtual Private Cloud (VPC) security groups to be
    #   associated with the cluster.
    #
    #   Default: The default VPC security group is associated with the
    #   cluster.
    #
    #   VPC security groups only apply to clusters in VPCs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] preferred_maintenance_window
    #   The weekly time range (in UTC) during which automated cluster
    #   maintenance can occur.
    #
    #   Format: `ddd:hh24:mi-ddd:hh24:mi`
    #
    #   Default: The value selected for the cluster from which the snapshot
    #   was taken. For more information about the time blocks for each
    #   region, see [Maintenance Windows][1] in Amazon Redshift Cluster
    #   Management Guide.
    #
    #   Valid Days: Mon \| Tue \| Wed \| Thu \| Fri \| Sat \| Sun
    #
    #   Constraints: Minimum 30-minute window.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-maintenance-windows
    #   @return [String]
    #
    # @!attribute [rw] automated_snapshot_retention_period
    #   The number of days that automated snapshots are retained. If the
    #   value is 0, automated snapshots are disabled. Even if automated
    #   snapshots are disabled, you can still create manual snapshots when
    #   you want with CreateClusterSnapshot.
    #
    #   Default: The value selected for the cluster from which the snapshot
    #   was taken.
    #
    #   Constraints: Must be a value from 0 to 35.
    #   @return [Integer]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key
    #   that you want to use to encrypt data in the cluster that you restore
    #   from a shared snapshot.
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type that the restored cluster will be provisioned with.
    #
    #   Default: The node type of the cluster from which the snapshot was
    #   taken. You can modify this if you are using any DS node type. In
    #   that case, you can choose to restore into another DS node type of
    #   the same size. For example, you can restore ds1.8xlarge into
    #   ds2.8xlarge, or ds1.xlarge into ds2.xlarge. If you have a DC
    #   instance type, you must restore into that same instance type and
    #   size. In other words, you can only restore a dc1.large instance type
    #   into another dc1.large instance type or dc2.large instance type. You
    #   can't restore dc1.8xlarge to dc2.8xlarge. First restore to a
    #   dc1.8xlareg cluster, then resize to a dc2.8large cluster. For more
    #   information about node types, see [ About Clusters and Nodes][1] in
    #   the *Amazon Redshift Cluster Management Guide*.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-clusters.html#rs-about-clusters-and-nodes
    #   @return [String]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] additional_info
    #   Reserved.
    #   @return [String]
    #
    # @!attribute [rw] iam_roles
    #   A list of AWS Identity and Access Management (IAM) roles that can be
    #   used by the cluster to access other AWS services. You must supply
    #   the IAM roles in their Amazon Resource Name (ARN) format. You can
    #   supply up to 10 IAM roles in a single request.
    #
    #   A cluster can have up to 10 IAM roles associated at any time.
    #   @return [Array<String>]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track for the restored cluster. When you
    #   take a snapshot, the snapshot inherits the `MaintenanceTrack` value
    #   from the cluster. The snapshot might be on a different track than
    #   the cluster that was the source for the snapshot. For example,
    #   suppose that you take a snapshot of a cluster that is on the current
    #   track and then change the cluster to be on the trailing track. In
    #   this case, the snapshot and the source cluster are on different
    #   tracks.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreFromClusterSnapshotMessage AWS API Documentation
    #
    class RestoreFromClusterSnapshotMessage < Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :port,
      :availability_zone,
      :allow_version_upgrade,
      :cluster_subnet_group_name,
      :publicly_accessible,
      :owner_account,
      :hsm_client_certificate_identifier,
      :hsm_configuration_identifier,
      :elastic_ip,
      :cluster_parameter_group_name,
      :cluster_security_groups,
      :vpc_security_group_ids,
      :preferred_maintenance_window,
      :automated_snapshot_retention_period,
      :kms_key_id,
      :node_type,
      :enhanced_vpc_routing,
      :additional_info,
      :iam_roles,
      :maintenance_track_name)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreFromClusterSnapshotResult AWS API Documentation
    #
    class RestoreFromClusterSnapshotResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes the status of a cluster restore action. Returns null if the
    # cluster was not created by restoring a snapshot.
    #
    # @!attribute [rw] status
    #   The status of the restore action. Returns starting, restoring,
    #   completed, or failed.
    #   @return [String]
    #
    # @!attribute [rw] current_restore_rate_in_mega_bytes_per_second
    #   The number of megabytes per second being transferred from the backup
    #   storage. Returns the average rate for a completed backup.
    #   @return [Float]
    #
    # @!attribute [rw] snapshot_size_in_mega_bytes
    #   The size of the set of snapshot data used to restore the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   The number of megabytes that have been transferred from snapshot
    #   storage.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of time an in-progress restore has been running, or the
    #   amount of time it took a completed restore to finish.
    #   @return [Integer]
    #
    # @!attribute [rw] estimated_time_to_completion_in_seconds
    #   The estimate of the time remaining before the restore will complete.
    #   Returns 0 for a completed restore.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreStatus AWS API Documentation
    #
    class RestoreStatus < Struct.new(
      :status,
      :current_restore_rate_in_mega_bytes_per_second,
      :snapshot_size_in_mega_bytes,
      :progress_in_mega_bytes,
      :elapsed_time_in_seconds,
      :estimated_time_to_completion_in_seconds)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RestoreTableFromClusterSnapshotMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #         snapshot_identifier: "String", # required
    #         source_database_name: "String", # required
    #         source_schema_name: "String",
    #         source_table_name: "String", # required
    #         target_database_name: "String",
    #         target_schema_name: "String",
    #         new_table_name: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the Amazon Redshift cluster to restore the table
    #   to.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier of the snapshot to restore the table from. This
    #   snapshot must have been created from the Amazon Redshift cluster
    #   specified by the `ClusterIdentifier` parameter.
    #   @return [String]
    #
    # @!attribute [rw] source_database_name
    #   The name of the source database that contains the table to restore
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] source_schema_name
    #   The name of the source schema that contains the table to restore
    #   from. If you do not specify a `SourceSchemaName` value, the default
    #   is `public`.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table to restore from.
    #   @return [String]
    #
    # @!attribute [rw] target_database_name
    #   The name of the database to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] target_schema_name
    #   The name of the schema to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] new_table_name
    #   The name of the table to create as a result of the current request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreTableFromClusterSnapshotMessage AWS API Documentation
    #
    class RestoreTableFromClusterSnapshotMessage < Struct.new(
      :cluster_identifier,
      :snapshot_identifier,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name)
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_status
    #   Describes the status of a RestoreTableFromClusterSnapshot operation.
    #   @return [Types::TableRestoreStatus]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RestoreTableFromClusterSnapshotResult AWS API Documentation
    #
    class RestoreTableFromClusterSnapshotResult < Struct.new(
      :table_restore_status)
      include Aws::Structure
    end

    # Describes a `RevisionTarget`.
    #
    # @!attribute [rw] database_revision
    #   A unique string that identifies the version to update the cluster
    #   to. You can use this value in ModifyClusterDbRevision.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   A string that describes the changes and features that will be
    #   applied to the cluster when it is updated to the corresponding
    #   ClusterDbRevision.
    #   @return [String]
    #
    # @!attribute [rw] database_revision_release_date
    #   The date on which the database revision was released.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevisionTarget AWS API Documentation
    #
    class RevisionTarget < Struct.new(
      :database_revision,
      :description,
      :database_revision_release_date)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeClusterSecurityGroupIngressMessage
    #   data as a hash:
    #
    #       {
    #         cluster_security_group_name: "String", # required
    #         cidrip: "String",
    #         ec2_security_group_name: "String",
    #         ec2_security_group_owner_id: "String",
    #       }
    #
    # @!attribute [rw] cluster_security_group_name
    #   The name of the security Group from which to revoke the ingress
    #   rule.
    #   @return [String]
    #
    # @!attribute [rw] cidrip
    #   The IP range for which to revoke access. This range must be a valid
    #   Classless Inter-Domain Routing (CIDR) block of IP addresses. If
    #   `CIDRIP` is specified, `EC2SecurityGroupName` and
    #   `EC2SecurityGroupOwnerId` cannot be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_name
    #   The name of the EC2 Security Group whose access is to be revoked. If
    #   `EC2SecurityGroupName` is specified, `EC2SecurityGroupOwnerId` must
    #   also be provided and `CIDRIP` cannot be provided.
    #   @return [String]
    #
    # @!attribute [rw] ec2_security_group_owner_id
    #   The AWS account number of the owner of the security group specified
    #   in the `EC2SecurityGroupName` parameter. The AWS access key ID is
    #   not an acceptable value. If `EC2SecurityGroupOwnerId` is specified,
    #   `EC2SecurityGroupName` must also be provided. and `CIDRIP` cannot be
    #   provided.
    #
    #   Example: `111122223333`
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeClusterSecurityGroupIngressMessage AWS API Documentation
    #
    class RevokeClusterSecurityGroupIngressMessage < Struct.new(
      :cluster_security_group_name,
      :cidrip,
      :ec2_security_group_name,
      :ec2_security_group_owner_id)
      include Aws::Structure
    end

    # @!attribute [rw] cluster_security_group
    #   Describes a security group.
    #   @return [Types::ClusterSecurityGroup]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeClusterSecurityGroupIngressResult AWS API Documentation
    #
    class RevokeClusterSecurityGroupIngressResult < Struct.new(
      :cluster_security_group)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RevokeSnapshotAccessMessage
    #   data as a hash:
    #
    #       {
    #         snapshot_identifier: "String", # required
    #         snapshot_cluster_identifier: "String",
    #         account_with_restore_access: "String", # required
    #       }
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier of the snapshot that the account can no longer
    #   access.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_cluster_identifier
    #   The identifier of the cluster the snapshot was created from. This
    #   parameter is required if your IAM user has a policy containing a
    #   snapshot resource element that specifies anything other than * for
    #   the cluster name.
    #   @return [String]
    #
    # @!attribute [rw] account_with_restore_access
    #   The identifier of the AWS customer account that can no longer
    #   restore the specified snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeSnapshotAccessMessage AWS API Documentation
    #
    class RevokeSnapshotAccessMessage < Struct.new(
      :snapshot_identifier,
      :snapshot_cluster_identifier,
      :account_with_restore_access)
      include Aws::Structure
    end

    # @!attribute [rw] snapshot
    #   Describes a snapshot.
    #   @return [Types::Snapshot]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RevokeSnapshotAccessResult AWS API Documentation
    #
    class RevokeSnapshotAccessResult < Struct.new(
      :snapshot)
      include Aws::Structure
    end

    # @note When making an API call, you may pass RotateEncryptionKeyMessage
    #   data as a hash:
    #
    #       {
    #         cluster_identifier: "String", # required
    #       }
    #
    # @!attribute [rw] cluster_identifier
    #   The unique identifier of the cluster that you want to rotate the
    #   encryption keys for.
    #
    #   Constraints: Must be the name of valid cluster that has encryption
    #   enabled.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RotateEncryptionKeyMessage AWS API Documentation
    #
    class RotateEncryptionKeyMessage < Struct.new(
      :cluster_identifier)
      include Aws::Structure
    end

    # @!attribute [rw] cluster
    #   Describes a cluster.
    #   @return [Types::Cluster]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/RotateEncryptionKeyResult AWS API Documentation
    #
    class RotateEncryptionKeyResult < Struct.new(
      :cluster)
      include Aws::Structure
    end

    # Describes a snapshot.
    #
    # @!attribute [rw] snapshot_identifier
    #   The snapshot identifier that is provided in the request.
    #   @return [String]
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the cluster for which the snapshot was taken.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_create_time
    #   The time (UTC) when Amazon Redshift began the snapshot. A snapshot
    #   contains a copy of the cluster data as of this exact time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The snapshot status. The value of the status depends on the API
    #   operation used.
    #
    #   * CreateClusterSnapshot and CopyClusterSnapshot returns status as
    #     "creating".
    #
    #   * DescribeClusterSnapshots returns status as "creating",
    #     "available", "final snapshot", or "failed".
    #
    #   * DeleteClusterSnapshot returns status as "deleted".
    #   @return [String]
    #
    # @!attribute [rw] port
    #   The port that the cluster is listening on.
    #   @return [Integer]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the cluster was created.
    #   @return [String]
    #
    # @!attribute [rw] cluster_create_time
    #   The time (UTC) when the cluster was originally created.
    #   @return [Time]
    #
    # @!attribute [rw] master_username
    #   The master user name for the cluster.
    #   @return [String]
    #
    # @!attribute [rw] cluster_version
    #   The version ID of the Amazon Redshift engine that is running on the
    #   cluster.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_type
    #   The snapshot type. Snapshots created using CreateClusterSnapshot and
    #   CopyClusterSnapshot will be of type "manual".
    #   @return [String]
    #
    # @!attribute [rw] node_type
    #   The node type of the nodes in the cluster.
    #   @return [String]
    #
    # @!attribute [rw] number_of_nodes
    #   The number of nodes in the cluster.
    #   @return [Integer]
    #
    # @!attribute [rw] db_name
    #   The name of the database that was created when the cluster was
    #   created.
    #   @return [String]
    #
    # @!attribute [rw] vpc_id
    #   The VPC identifier of the cluster if the snapshot is from a cluster
    #   in a VPC. Otherwise, this field is not in the output.
    #   @return [String]
    #
    # @!attribute [rw] encrypted
    #   If `true`, the data in the snapshot is encrypted at rest.
    #   @return [Boolean]
    #
    # @!attribute [rw] kms_key_id
    #   The AWS Key Management Service (KMS) key ID of the encryption key
    #   that was used to encrypt data in the cluster from which the snapshot
    #   was taken.
    #   @return [String]
    #
    # @!attribute [rw] encrypted_with_hsm
    #   A boolean that indicates whether the snapshot data is encrypted
    #   using the HSM keys of the source cluster. `true` indicates that the
    #   data is encrypted using HSM keys.
    #   @return [Boolean]
    #
    # @!attribute [rw] accounts_with_restore_access
    #   A list of the AWS customer accounts authorized to restore the
    #   snapshot. Returns `null` if no accounts are authorized. Visible only
    #   to the snapshot owner.
    #   @return [Array<Types::AccountWithRestoreAccess>]
    #
    # @!attribute [rw] owner_account
    #   For manual snapshots, the AWS customer account used to create or
    #   copy the snapshot. For automatic snapshots, the owner of the
    #   cluster. The owner can perform all snapshot actions, such as sharing
    #   a manual snapshot.
    #   @return [String]
    #
    # @!attribute [rw] total_backup_size_in_mega_bytes
    #   The size of the complete set of backup data that would be used to
    #   restore the cluster.
    #   @return [Float]
    #
    # @!attribute [rw] actual_incremental_backup_size_in_mega_bytes
    #   The size of the incremental backup.
    #   @return [Float]
    #
    # @!attribute [rw] backup_progress_in_mega_bytes
    #   The number of megabytes that have been transferred to the snapshot
    #   backup.
    #   @return [Float]
    #
    # @!attribute [rw] current_backup_rate_in_mega_bytes_per_second
    #   The number of megabytes per second being transferred to the snapshot
    #   backup. Returns `0` for a completed backup.
    #   @return [Float]
    #
    # @!attribute [rw] estimated_seconds_to_completion
    #   The estimate of the time remaining before the snapshot backup will
    #   complete. Returns `0` for a completed backup.
    #   @return [Integer]
    #
    # @!attribute [rw] elapsed_time_in_seconds
    #   The amount of time an in-progress snapshot backup has been running,
    #   or the amount of time it took a completed backup to finish.
    #   @return [Integer]
    #
    # @!attribute [rw] source_region
    #   The source region from which the snapshot was copied.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The list of tags for the cluster snapshot.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] restorable_node_types
    #   The list of node types that this cluster snapshot is able to restore
    #   into.
    #   @return [Array<String>]
    #
    # @!attribute [rw] enhanced_vpc_routing
    #   An option that specifies whether to create the cluster with enhanced
    #   VPC routing enabled. To create a cluster that uses enhanced VPC
    #   routing, the cluster must be in a VPC. For more information, see
    #   [Enhanced VPC Routing][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #   If this option is `true`, enhanced VPC routing is enabled.
    #
    #   Default: false
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/enhanced-vpc-routing.html
    #   @return [Boolean]
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the maintenance track for the snapshot.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Snapshot AWS API Documentation
    #
    class Snapshot < Struct.new(
      :snapshot_identifier,
      :cluster_identifier,
      :snapshot_create_time,
      :status,
      :port,
      :availability_zone,
      :cluster_create_time,
      :master_username,
      :cluster_version,
      :snapshot_type,
      :node_type,
      :number_of_nodes,
      :db_name,
      :vpc_id,
      :encrypted,
      :kms_key_id,
      :encrypted_with_hsm,
      :accounts_with_restore_access,
      :owner_account,
      :total_backup_size_in_mega_bytes,
      :actual_incremental_backup_size_in_mega_bytes,
      :backup_progress_in_mega_bytes,
      :current_backup_rate_in_mega_bytes_per_second,
      :estimated_seconds_to_completion,
      :elapsed_time_in_seconds,
      :source_region,
      :tags,
      :restorable_node_types,
      :enhanced_vpc_routing,
      :maintenance_track_name)
      include Aws::Structure
    end

    # The snapshot copy grant that grants Amazon Redshift permission to
    # encrypt copied snapshots with the specified customer master key (CMK)
    # from AWS KMS in the destination region.
    #
    # For more information about managing snapshot copy grants, go to
    # [Amazon Redshift Database Encryption][1] in the *Amazon Redshift
    # Cluster Management Guide*.
    #
    #
    #
    # [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-db-encryption.html
    #
    # @!attribute [rw] snapshot_copy_grant_name
    #   The name of the snapshot copy grant.
    #   @return [String]
    #
    # @!attribute [rw] kms_key_id
    #   The unique identifier of the customer master key (CMK) in AWS KMS to
    #   which Amazon Redshift is granted permission.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A list of tag instances.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/SnapshotCopyGrant AWS API Documentation
    #
    class SnapshotCopyGrant < Struct.new(
      :snapshot_copy_grant_name,
      :kms_key_id,
      :tags)
      include Aws::Structure
    end

    # @!attribute [rw] marker
    #   An optional parameter that specifies the starting point to return a
    #   set of response records. When the results of a
    #   `DescribeSnapshotCopyGrant` request exceed the value specified in
    #   `MaxRecords`, AWS returns a value in the `Marker` field of the
    #   response. You can retrieve the next set of response records by
    #   providing the returned marker value in the `Marker` parameter and
    #   retrying the request.
    #
    #   Constraints: You can specify either the **SnapshotCopyGrantName**
    #   parameter or the **Marker** parameter, but not both.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_copy_grants
    #   The list of `SnapshotCopyGrant` objects.
    #   @return [Array<Types::SnapshotCopyGrant>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/SnapshotCopyGrantMessage AWS API Documentation
    #
    class SnapshotCopyGrantMessage < Struct.new(
      :marker,
      :snapshot_copy_grants)
      include Aws::Structure
    end

    # Contains the output from the DescribeClusterSnapshots action.
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @!attribute [rw] snapshots
    #   A list of Snapshot instances.
    #   @return [Array<Types::Snapshot>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/SnapshotMessage AWS API Documentation
    #
    class SnapshotMessage < Struct.new(
      :marker,
      :snapshots)
      include Aws::Structure
    end

    # Describes a subnet.
    #
    # @!attribute [rw] subnet_identifier
    #   The identifier of the subnet.
    #   @return [String]
    #
    # @!attribute [rw] subnet_availability_zone
    #   Describes an availability zone.
    #   @return [Types::AvailabilityZone]
    #
    # @!attribute [rw] subnet_status
    #   The status of the subnet.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Subnet AWS API Documentation
    #
    class Subnet < Struct.new(
      :subnet_identifier,
      :subnet_availability_zone,
      :subnet_status)
      include Aws::Structure
    end

    # A list of supported platforms for orderable clusters.
    #
    # @!attribute [rw] name
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/SupportedPlatform AWS API Documentation
    #
    class SupportedPlatform < Struct.new(
      :name)
      include Aws::Structure
    end

    # Describes the status of a RestoreTableFromClusterSnapshot operation.
    #
    # @!attribute [rw] table_restore_request_id
    #   The unique identifier for the table restore request.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   A value that describes the current state of the table restore
    #   request.
    #
    #   Valid Values: `SUCCEEDED`, `FAILED`, `CANCELED`, `PENDING`,
    #   `IN_PROGRESS`
    #   @return [String]
    #
    # @!attribute [rw] message
    #   A description of the status of the table restore request. Status
    #   values include `SUCCEEDED`, `FAILED`, `CANCELED`, `PENDING`,
    #   `IN_PROGRESS`.
    #   @return [String]
    #
    # @!attribute [rw] request_time
    #   The time that the table restore request was made, in Universal
    #   Coordinated Time (UTC).
    #   @return [Time]
    #
    # @!attribute [rw] progress_in_mega_bytes
    #   The amount of data restored to the new table so far, in megabytes
    #   (MB).
    #   @return [Integer]
    #
    # @!attribute [rw] total_data_in_mega_bytes
    #   The total amount of data to restore to the new table, in megabytes
    #   (MB).
    #   @return [Integer]
    #
    # @!attribute [rw] cluster_identifier
    #   The identifier of the Amazon Redshift cluster that the table is
    #   being restored to.
    #   @return [String]
    #
    # @!attribute [rw] snapshot_identifier
    #   The identifier of the snapshot that the table is being restored
    #   from.
    #   @return [String]
    #
    # @!attribute [rw] source_database_name
    #   The name of the source database that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_schema_name
    #   The name of the source schema that contains the table being
    #   restored.
    #   @return [String]
    #
    # @!attribute [rw] source_table_name
    #   The name of the source table being restored.
    #   @return [String]
    #
    # @!attribute [rw] target_database_name
    #   The name of the database to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] target_schema_name
    #   The name of the schema to restore the table to.
    #   @return [String]
    #
    # @!attribute [rw] new_table_name
    #   The name of the table to create as a result of the table restore
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/TableRestoreStatus AWS API Documentation
    #
    class TableRestoreStatus < Struct.new(
      :table_restore_request_id,
      :status,
      :message,
      :request_time,
      :progress_in_mega_bytes,
      :total_data_in_mega_bytes,
      :cluster_identifier,
      :snapshot_identifier,
      :source_database_name,
      :source_schema_name,
      :source_table_name,
      :target_database_name,
      :target_schema_name,
      :new_table_name)
      include Aws::Structure
    end

    # @!attribute [rw] table_restore_status_details
    #   A list of status details for one or more table restore requests.
    #   @return [Array<Types::TableRestoreStatus>]
    #
    # @!attribute [rw] marker
    #   A pagination token that can be used in a subsequent
    #   DescribeTableRestoreStatus request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/TableRestoreStatusMessage AWS API Documentation
    #
    class TableRestoreStatusMessage < Struct.new(
      :table_restore_status_details,
      :marker)
      include Aws::Structure
    end

    # A tag consisting of a name/value pair for a resource.
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
    #   The key, or name, for the resource tag.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value for the resource tag.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      include Aws::Structure
    end

    # A tag and its associated resource.
    #
    # @!attribute [rw] tag
    #   The tag for the resource.
    #   @return [Types::Tag]
    #
    # @!attribute [rw] resource_name
    #   The Amazon Resource Name (ARN) with which the tag is associated. For
    #   example, `arn:aws:redshift:us-east-1:123456789:cluster:t1`.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The type of resource with which the tag is associated. Valid
    #   resource types are:
    #
    #   * Cluster
    #
    #   * CIDR/IP
    #
    #   * EC2 security group
    #
    #   * Snapshot
    #
    #   * Cluster security group
    #
    #   * Subnet group
    #
    #   * HSM connection
    #
    #   * HSM certificate
    #
    #   * Parameter group
    #
    #   For more information about Amazon Redshift resource types and
    #   constructing ARNs, go to [Constructing an Amazon Redshift Amazon
    #   Resource Name (ARN)][1] in the Amazon Redshift Cluster Management
    #   Guide.
    #
    #
    #
    #   [1]: http://docs.aws.amazon.com/redshift/latest/mgmt/redshift-iam-access-control-overview.html#redshift-iam-access-control-specify-actions
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/TaggedResource AWS API Documentation
    #
    class TaggedResource < Struct.new(
      :tag,
      :resource_name,
      :resource_type)
      include Aws::Structure
    end

    # @!attribute [rw] tagged_resources
    #   A list of tags with their associated resources.
    #   @return [Array<Types::TaggedResource>]
    #
    # @!attribute [rw] marker
    #   A value that indicates the starting point for the next set of
    #   response records in a subsequent request. If a value is returned in
    #   a response, you can retrieve the next set of records by providing
    #   this returned marker value in the `Marker` parameter and retrying
    #   the command. If the `Marker` field is empty, all response records
    #   have been retrieved for the request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/TaggedResourceListMessage AWS API Documentation
    #
    class TaggedResourceListMessage < Struct.new(
      :tagged_resources,
      :marker)
      include Aws::Structure
    end

    # @!attribute [rw] maintenance_tracks
    #   A list of maintenance tracks output by the `DescribeClusterTracks`
    #   operation.
    #   @return [Array<Types::MaintenanceTrack>]
    #
    # @!attribute [rw] marker
    #   The starting point to return a set of response tracklist records.
    #   You can retrieve the next set of response records by providing the
    #   returned marker value in the `Marker` parameter and retrying the
    #   request.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/TrackListMessage AWS API Documentation
    #
    class TrackListMessage < Struct.new(
      :maintenance_tracks,
      :marker)
      include Aws::Structure
    end

    # A maintenance track that you can switch the current track to.
    #
    # @!attribute [rw] maintenance_track_name
    #   The name of the new maintenance track.
    #   @return [String]
    #
    # @!attribute [rw] database_version
    #   The cluster version for the new maintenance track.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/UpdateTarget AWS API Documentation
    #
    class UpdateTarget < Struct.new(
      :maintenance_track_name,
      :database_version)
      include Aws::Structure
    end

    # Describes the members of a VPC security group.
    #
    # @!attribute [rw] vpc_security_group_id
    #   The identifier of the VPC security group.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the VPC security group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/redshift-2012-12-01/VpcSecurityGroupMembership AWS API Documentation
    #
    class VpcSecurityGroupMembership < Struct.new(
      :vpc_security_group_id,
      :status)
      include Aws::Structure
    end

  end
end
