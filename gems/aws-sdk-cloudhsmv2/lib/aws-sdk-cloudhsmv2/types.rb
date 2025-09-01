# frozen_string_literal: true

# This is generated code!

module Aws::CloudHSMV2
  # This module contains the types returned by client operations.
  module Types

    # <p>Contains information about a backup of an CloudHSM cluster. All backup objects
    #       contain the <code>BackupId</code>, <code>BackupState</code>, <code>ClusterId</code>, and
    #         <code>CreateTimestamp</code> parameters. Backups that were copied into a destination region
    #       additionally contain the <code>CopyTimestamp</code>, <code>SourceBackup</code>,
    #         <code>SourceCluster</code>, and <code>SourceRegion</code> parameters. A backup that is
    #       pending deletion will include the <code>DeleteTimestamp</code> parameter.</p>
    # @!attribute backup_id
    #   <p>The identifier (ID) of the backup.</p>
    #   @return [String]
    # @!attribute backup_arn
    #   <p>The Amazon Resource Name (ARN) of the backup.</p>
    #   @return [String]
    # @!attribute backup_state
    #   <p>The state of the backup.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that was backed up.</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The date and time when the backup was created.</p>
    #   @return [Time]
    # @!attribute copy_timestamp
    #   <p>The date and time when the backup was copied from a source backup.</p>
    #   @return [Time]
    # @!attribute never_expires
    #   <p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts 
    #         a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>
    #   @return [Boolean]
    # @!attribute source_region
    #   <p>The AWS Region that contains the source backup from which the new backup was
    #         copied.</p>
    #   @return [String]
    # @!attribute source_backup
    #   <p>The identifier (ID) of the source backup from which the new backup was
    #         copied.</p>
    #   @return [String]
    # @!attribute source_cluster
    #   <p>The identifier (ID) of the cluster containing the source backup from which the new
    #         backup was copied.</p>
    #   @return [String]
    # @!attribute delete_timestamp
    #   <p>The date and time when the backup will be permanently deleted.</p>
    #   @return [Time]
    # @!attribute tag_list
    #   <p>The list of tags for the backup.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute hsm_type
    #   <p>The HSM type used to create the backup.</p>
    #   @return [String]
    # @!attribute mode
    #   <p>The mode of the cluster that was backed up.</p>
    #   @return [String]
    class Backup < Struct.new(
      :backup_id,
      :backup_arn,
      :backup_state,
      :cluster_id,
      :create_timestamp,
      :copy_timestamp,
      :never_expires,
      :source_region,
      :source_backup,
      :source_cluster,
      :delete_timestamp,
      :tag_list,
      :hsm_type,
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BackupPolicy
      DEFAULT = 'DEFAULT'
    end

    # <p>A policy that defines the number of days to retain backups.</p>
    # @!attribute type
    #   <p>The type of backup retention policy. For the <code>DAYS</code> type, the value is 
    #               the number of days to retain backups.</p>
    #   @return [String]
    # @!attribute value
    #   <p>Use a value between 7 - 379.</p>
    #   @return [String]
    class BackupRetentionPolicy < Struct.new(
      :type,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module BackupRetentionType
      DAYS = 'DAYS'
    end

    module BackupState
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      READY = 'READY'
      DELETED = 'DELETED'
      PENDING_DELETION = 'PENDING_DELETION'
    end

    # <p>Contains one or more certificates or a certificate signing request (CSR).</p>
    # @!attribute cluster_csr
    #   <p>The cluster's certificate signing request (CSR). The CSR exists only when the cluster's
    #         state is <code>UNINITIALIZED</code>.</p>
    #   @return [String]
    # @!attribute hsm_certificate
    #   <p>The HSM certificate issued (signed) by the HSM hardware.</p>
    #   @return [String]
    # @!attribute aws_hardware_certificate
    #   <p>The HSM hardware certificate issued (signed) by CloudHSM.</p>
    #   @return [String]
    # @!attribute manufacturer_hardware_certificate
    #   <p>The HSM hardware certificate issued (signed) by the hardware manufacturer.</p>
    #   @return [String]
    # @!attribute cluster_certificate
    #   <p>The cluster certificate issued (signed) by the issuing certificate authority (CA) of
    #         the cluster's owner.</p>
    #   @return [String]
    class Certificates < Struct.new(
      :cluster_csr,
      :hsm_certificate,
      :aws_hardware_certificate,
      :manufacturer_hardware_certificate,
      :cluster_certificate,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because the requester does not have permission to perform the
    #       requested operation.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmAccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because of an CloudHSM internal failure. The request can
    #       be retried.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmInternalFailureException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it is not a valid request.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmInvalidRequestException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it exceeds an CloudHSM limit.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmResourceLimitExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because it refers to a resource that cannot be
    #       found.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because an error occurred.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmServiceException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.</p>
    # @!attribute message
    #   @return [String]
    class CloudHsmTagException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about an CloudHSM cluster.</p>
    # @!attribute backup_policy
    #   <p>The cluster's backup policy.</p>
    #   @return [String]
    # @!attribute backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    #   @return [Types::BackupRetentionPolicy]
    # @!attribute cluster_id
    #   <p>The cluster's identifier (ID).</p>
    #   @return [String]
    # @!attribute create_timestamp
    #   <p>The date and time when the cluster was created.</p>
    #   @return [Time]
    # @!attribute hsms
    #   <p>Contains information about the HSMs in the cluster.</p>
    #   @return [Array<Types::Hsm>]
    # @!attribute hsm_type
    #   <p>The type of HSM that the cluster contains.</p>
    #   @return [String]
    # @!attribute hsm_type_rollback_expiration
    #   <p>The timestamp until when the cluster can be rolled back to its original HSM type.</p>
    #   @return [Time]
    # @!attribute pre_co_password
    #   <p>The default password for the cluster's Pre-Crypto Officer (PRECO) user.</p>
    #   @return [String]
    # @!attribute security_group
    #   <p>The identifier (ID) of the cluster's security group.</p>
    #   @return [String]
    # @!attribute source_backup_id
    #   <p>The identifier (ID) of the backup used to create the cluster. This value exists only
    #         when the cluster was created from a backup.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The cluster's state.</p>
    #   @return [String]
    # @!attribute state_message
    #   <p>A description of the cluster's state.</p>
    #   @return [String]
    # @!attribute subnet_mapping
    #   <p>A map from availability zone to the cluster’s subnet in that availability zone.</p>
    #   @return [Hash<String, String>]
    # @!attribute vpc_id
    #   <p>The identifier (ID) of the virtual private cloud (VPC) that contains the
    #         cluster.</p>
    #   @return [String]
    # @!attribute network_type
    #   <p>The cluster's NetworkType can be IPv4 (the default) or DUALSTACK.
    #           The IPv4 NetworkType restricts communication between your application and the hardware security modules (HSMs) to the IPv4 protocol only. The DUALSTACK NetworkType enables communication over both IPv4 and IPv6 protocols.
    #           To use DUALSTACK, configure your virtual private cloud (VPC) and subnets to support both IPv4 and IPv6.
    #           This configuration involves adding IPv6 Classless Inter-Domain Routing (CIDR) blocks to the existing IPv4 CIDR blocks in your subnets.
    #           The NetworkType you choose affects the network addressing options for your cluster. DUALSTACK provides more flexibility by supporting both IPv4 and IPv6 communication.</p>
    #   @return [String]
    # @!attribute certificates
    #   <p>Contains one or more certificates or a certificate signing request (CSR).</p>
    #   @return [Types::Certificates]
    # @!attribute tag_list
    #   <p>The list of tags for the cluster.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute mode
    #   <p>The mode of the cluster.</p>
    #   @return [String]
    class Cluster < Struct.new(
      :backup_policy,
      :backup_retention_policy,
      :cluster_id,
      :create_timestamp,
      :hsms,
      :hsm_type,
      :hsm_type_rollback_expiration,
      :pre_co_password,
      :security_group,
      :source_backup_id,
      :state,
      :state_message,
      :subnet_mapping,
      :vpc_id,
      :network_type,
      :certificates,
      :tag_list,
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module ClusterMode
      FIPS = 'FIPS'
      NON_FIPS = 'NON_FIPS'
    end

    module ClusterState
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      UNINITIALIZED = 'UNINITIALIZED'
      INITIALIZE_IN_PROGRESS = 'INITIALIZE_IN_PROGRESS'
      INITIALIZED = 'INITIALIZED'
      ACTIVE = 'ACTIVE'
      UPDATE_IN_PROGRESS = 'UPDATE_IN_PROGRESS'
      MODIFY_IN_PROGRESS = 'MODIFY_IN_PROGRESS'
      ROLLBACK_IN_PROGRESS = 'ROLLBACK_IN_PROGRESS'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETED = 'DELETED'
      DEGRADED = 'DEGRADED'
    end

    # @!attribute destination_region
    #   <p>The AWS region that will contain your copied CloudHSM cluster backup.</p>
    #   @return [String]
    # @!attribute backup_id
    #   <p>The ID of the backup that will be copied to the destination region. </p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>Tags to apply to the destination backup during creation. If you specify tags, only these tags will be applied to the destination backup. If you do not specify tags, the service copies tags from the source backup to the destination backup.</p>
    #   @return [Array<Types::Tag>]
    class CopyBackupToRegionRequest < Struct.new(
      :destination_region,
      :backup_id,
      :tag_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute destination_backup
    #   <p>Information on the backup that will be copied to the destination region, including
    #         CreateTimestamp, SourceBackup, SourceCluster, and Source Region. CreateTimestamp of the
    #         destination backup will be the same as that of the source backup.</p>
    #            <p>You will need to use the <code>sourceBackupID</code> returned in this operation to use
    #         the <a>DescribeBackups</a> operation on the backup that will be copied to the
    #         destination region.</p>
    #   @return [Types::DestinationBackup]
    class CopyBackupToRegionResponse < Struct.new(
      :destination_backup,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    #   @return [Types::BackupRetentionPolicy]
    # @!attribute hsm_type
    #   <p>The type of HSM to use in the cluster. The allowed values are
    #         <code>hsm1.medium</code> and <code>hsm2m.medium</code>.</p>
    #   @return [String]
    # @!attribute source_backup_id
    #   <p>The identifier (ID) or the Amazon Resource Name (ARN) of the cluster backup to restore. Use this value to restore the
    #         cluster from a backup instead of creating a new cluster. To find the backup ID or ARN, use <a>DescribeBackups</a>. <i>If using a backup in another account, the full ARN must be supplied.</i>
    #            </p>
    #   @return [String]
    # @!attribute subnet_ids
    #   <p>The identifiers (IDs) of the subnets where you are creating the cluster. You must
    #         specify at least one subnet. If you specify multiple subnets, they must meet the following
    #         criteria:</p>
    #            <ul>
    #               <li>
    #                  <p>All subnets must be in the same virtual private cloud (VPC).</p>
    #               </li>
    #               <li>
    #                  <p>You can specify only one subnet per Availability Zone.</p>
    #               </li>
    #            </ul>
    #   @return [Array<String>]
    # @!attribute network_type
    #   <p>The NetworkType to create a cluster with. The allowed values are
    #             <code>IPV4</code> and <code>DUALSTACK</code>.
    #         </p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>Tags to apply to the CloudHSM cluster during creation.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute mode
    #   <p>The mode to use in the cluster. The allowed values are
    #         <code>FIPS</code> and <code>NON_FIPS</code>.</p>
    #   @return [String]
    class CreateClusterRequest < Struct.new(
      :backup_retention_policy,
      :hsm_type,
      :source_backup_id,
      :subnet_ids,
      :network_type,
      :tag_list,
      :mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Information about the cluster that was created.</p>
    #   @return [Types::Cluster]
    class CreateClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The identifier (ID) of the HSM's cluster. To find the cluster ID, use <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute availability_zone
    #   <p>The Availability Zone where you are creating the HSM. To find the cluster's
    #         Availability Zones, use <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute ip_address
    #   <p>The HSM's IP address. If you specify an IP address, use an available address from the
    #         subnet that maps to the Availability Zone where you are creating the HSM. If you don't specify
    #         an IP address, one is chosen for you from that subnet.</p>
    #   @return [String]
    class CreateHsmRequest < Struct.new(
      :cluster_id,
      :availability_zone,
      :ip_address,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hsm
    #   <p>Information about the HSM that was created.</p>
    #   @return [Types::Hsm]
    class CreateHsmResponse < Struct.new(
      :hsm,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>The ID of the backup to be deleted. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #   @return [String]
    class DeleteBackupRequest < Struct.new(
      :backup_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup
    #   <p>Information on the <code>Backup</code> object deleted.</p>
    #   @return [Types::Backup]
    class DeleteBackupResponse < Struct.new(
      :backup,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that you are deleting. To find the cluster ID, use
    #         <a>DescribeClusters</a>.</p>
    #   @return [String]
    class DeleteClusterRequest < Struct.new(
      :cluster_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Information about the cluster that was deleted.</p>
    #   @return [Types::Cluster]
    class DeleteClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that contains the HSM that you are
    #         deleting.</p>
    #   @return [String]
    # @!attribute hsm_id
    #   <p>The identifier (ID) of the HSM that you are deleting.</p>
    #   @return [String]
    # @!attribute eni_id
    #   <p>The identifier (ID) of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    #   @return [String]
    # @!attribute eni_ip
    #   <p>The IP address of the elastic network interface (ENI) of the HSM that you are
    #         deleting.</p>
    #   @return [String]
    class DeleteHsmRequest < Struct.new(
      :cluster_id,
      :hsm_id,
      :eni_id,
      :eni_ip,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hsm_id
    #   <p>The identifier (ID) of the HSM that was deleted.</p>
    #   @return [String]
    class DeleteHsmResponse < Struct.new(
      :hsm_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource from which the policy will be removed. </p>
    #   @return [String]
    class DeleteResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource from which the policy was deleted. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy previously attached to the resource.</p>
    #   @return [String]
    class DeleteResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more backups.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of backups to return in the response. When there are more backups
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    #   @return [Integer]
    # @!attribute filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>backupIds</code> filter to return only the specified backups. Specify
    #         backups by their backup identifier (ID).</p>
    #            <p>Use the <code>sourceBackupIds</code> filter to return only the backups created from a
    #         source backup. The <code>sourceBackupID</code> of a source backup is returned by the <a>CopyBackupToRegion</a> operation.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the backups for the specified
    #         clusters. Specify clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only backups that match the specified
    #         state.</p>
    #            <p>Use the <code>neverExpires</code> filter to return backups filtered by the value in the
    #           <code>neverExpires</code> parameter. <code>True</code> returns all backups exempt from the
    #         backup retention policy. <code>False</code> returns all backups with a backup retention policy
    #         defined at the cluster.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute shared
    #   <p>Describe backups that are shared with you.</p>
    #            <note>
    #               <p>By default when using this option, the command returns backups that have been shared using a standard Resource Access Manager 
    #       resource share. In order for a backup that was shared using the PutResourcePolicy command to be returned, the share must be promoted to a 
    #       standard resource share using the RAM <a href="https://docs.aws.amazon.com/cli/latest/reference/ram/promote-resource-share-created-from-policy.html">PromoteResourceShareCreatedFromPolicy</a> API operation.
    #   
    #       For more information about sharing backups, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html"> Working with shared backups</a> in the CloudHSM User Guide.</p>
    #            </note>
    #   @return [Boolean]
    # @!attribute sort_ascending
    #   <p>Designates whether or not to sort the return backups by ascending chronological order
    #         of generation.</p>
    #   @return [Boolean]
    class DescribeBackupsRequest < Struct.new(
      :next_token,
      :max_results,
      :filters,
      :shared,
      :sort_ascending,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backups
    #   <p>A list of backups.</p>
    #   @return [Array<Types::Backup>]
    # @!attribute next_token
    #   <p>An opaque string that indicates that the response contains only a subset of backups.
    #         Use this value in a subsequent <code>DescribeBackups</code> request to get more
    #         backups.</p>
    #   @return [String]
    class DescribeBackupsResponse < Struct.new(
      :backups,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute filters
    #   <p>One or more filters to limit the items returned in the response.</p>
    #            <p>Use the <code>clusterIds</code> filter to return only the specified clusters. Specify
    #         clusters by their cluster identifier (ID).</p>
    #            <p>Use the <code>vpcIds</code> filter to return only the clusters in the specified virtual
    #         private clouds (VPCs). Specify VPCs by their VPC identifier (ID).</p>
    #            <p>Use the <code>states</code> filter to return only clusters that match the specified
    #         state.</p>
    #   @return [Hash<String, Array<String>>]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more clusters.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of clusters to return in the response. When there are more clusters
    #         than the number you specify, the response contains a <code>NextToken</code> value.</p>
    #   @return [Integer]
    class DescribeClustersRequest < Struct.new(
      :filters,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute clusters
    #   <p>A list of clusters.</p>
    #   @return [Array<Types::Cluster>]
    # @!attribute next_token
    #   <p>An opaque string that indicates that the response contains only a subset of clusters.
    #         Use this value in a subsequent <code>DescribeClusters</code> request to get more
    #         clusters.</p>
    #   @return [String]
    class DescribeClustersResponse < Struct.new(
      :clusters,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about the backup that will be copied and created by the <a>CopyBackupToRegion</a> operation.</p>
    # @!attribute create_timestamp
    #   <p>The date and time when both the source backup was created.</p>
    #   @return [Time]
    # @!attribute source_region
    #   <p>The AWS region that contains the source backup from which the new backup was copied.</p>
    #   @return [String]
    # @!attribute source_backup
    #   <p>The identifier (ID) of the source backup from which the new backup was copied.</p>
    #   @return [String]
    # @!attribute source_cluster
    #   <p>The identifier (ID) of the cluster containing the source backup from which the new backup was copied.</p>
    #   @return [String]
    class DestinationBackup < Struct.new(
      :create_timestamp,
      :source_region,
      :source_backup,
      :source_cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which a policy is attached.</p>
    #   @return [String]
    class GetResourcePolicyRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute policy
    #   <p>The policy attached to a resource.</p>
    #   @return [String]
    class GetResourcePolicyResponse < Struct.new(
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains information about a hardware security module (HSM) in an CloudHSM
    #       cluster.</p>
    # @!attribute availability_zone
    #   <p>The Availability Zone that contains the HSM.</p>
    #   @return [String]
    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that contains the HSM.</p>
    #   @return [String]
    # @!attribute subnet_id
    #   <p>The subnet that contains the HSM's elastic network interface (ENI).</p>
    #   @return [String]
    # @!attribute eni_id
    #   <p>The identifier (ID) of the HSM's elastic network interface (ENI).</p>
    #   @return [String]
    # @!attribute eni_ip
    #   <p>The IP address of the HSM's elastic network interface (ENI).</p>
    #   @return [String]
    # @!attribute eni_ip_v6
    #   <p>The IPv6 address (if any) of the HSM's elastic network interface (ENI).</p>
    #   @return [String]
    # @!attribute hsm_id
    #   <p>The HSM's identifier (ID).</p>
    #   @return [String]
    # @!attribute hsm_type
    #   <p>The type of HSM.</p>
    #   @return [String]
    # @!attribute state
    #   <p>The HSM's state.</p>
    #   @return [String]
    # @!attribute state_message
    #   <p>A description of the HSM's state.</p>
    #   @return [String]
    class Hsm < Struct.new(
      :availability_zone,
      :cluster_id,
      :subnet_id,
      :eni_id,
      :eni_ip,
      :eni_ip_v6,
      :hsm_id,
      :hsm_type,
      :state,
      :state_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module HsmState
      CREATE_IN_PROGRESS = 'CREATE_IN_PROGRESS'
      ACTIVE = 'ACTIVE'
      DEGRADED = 'DEGRADED'
      DELETE_IN_PROGRESS = 'DELETE_IN_PROGRESS'
      DELETED = 'DELETED'
    end

    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that you are claiming. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute signed_cert
    #   <p>The cluster certificate issued (signed) by your issuing certificate authority (CA). The
    #         certificate must be in PEM format and can contain a maximum of 5000 characters.</p>
    #   @return [String]
    # @!attribute trust_anchor
    #   <p>The issuing certificate of the issuing certificate authority (CA) that issued (signed)
    #         the cluster certificate. You must use a self-signed certificate. The certificate used to sign the HSM CSR must be directly available, and thus must be the
    #         root certificate. The certificate must be in PEM format and can contain a
    #         maximum of 5000 characters.</p>
    #   @return [String]
    class InitializeClusterRequest < Struct.new(
      :cluster_id,
      :signed_cert,
      :trust_anchor,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute state
    #   <p>The cluster's state.</p>
    #   @return [String]
    # @!attribute state_message
    #   <p>A description of the cluster's state.</p>
    #   @return [String]
    class InitializeClusterResponse < Struct.new(
      :state,
      :state_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are getting. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The <code>NextToken</code> value that you received in the previous response. Use this
    #         value to get more tags.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of tags to return in the response. When there are more tags than the
    #         number you specify, the response contains a <code>NextToken</code> value.</p>
    #   @return [Integer]
    class ListTagsRequest < Struct.new(
      :resource_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute tag_list
    #   <p>A list of tags.</p>
    #   @return [Array<Types::Tag>]
    # @!attribute next_token
    #   <p>An opaque string that indicates that the response contains only a subset of tags. Use
    #         this value in a subsequent <code>ListTags</code> request to get more tags.</p>
    #   @return [String]
    class ListTagsResponse < Struct.new(
      :tag_list,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>The identifier (ID) of the backup to modify. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #   @return [String]
    # @!attribute never_expires
    #   <p>Specifies whether the service should exempt a backup from the retention policy for the cluster. <code>True</code> exempts 
    #       a backup from the retention policy. <code>False</code> means the service applies the backup retention policy defined at the cluster.</p>
    #   @return [Boolean]
    class ModifyBackupAttributesRequest < Struct.new(
      :backup_id,
      :never_expires,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup
    #   <p>Contains information about a backup of an CloudHSM cluster. All backup objects
    #         contain the <code>BackupId</code>, <code>BackupState</code>, <code>ClusterId</code>, and
    #           <code>CreateTimestamp</code> parameters. Backups that were copied into a destination region
    #         additionally contain the <code>CopyTimestamp</code>, <code>SourceBackup</code>,
    #           <code>SourceCluster</code>, and <code>SourceRegion</code> parameters. A backup that is
    #         pending deletion will include the <code>DeleteTimestamp</code> parameter.</p>
    #   @return [Types::Backup]
    class ModifyBackupAttributesResponse < Struct.new(
      :backup,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute hsm_type
    #   <p>The desired HSM type of the cluster.</p>
    #   @return [String]
    # @!attribute backup_retention_policy
    #   <p>A policy that defines how the service retains backups.</p>
    #   @return [Types::BackupRetentionPolicy]
    # @!attribute cluster_id
    #   <p>The identifier (ID) of the cluster that you want to modify. To find the cluster ID, use
    #           <a>DescribeClusters</a>.</p>
    #   @return [String]
    class ModifyClusterRequest < Struct.new(
      :hsm_type,
      :backup_retention_policy,
      :cluster_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute cluster
    #   <p>Contains information about an CloudHSM cluster.</p>
    #   @return [Types::Cluster]
    class ModifyClusterResponse < Struct.new(
      :cluster,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    module NetworkType
      IPV4 = 'IPV4'
      DUALSTACK = 'DUALSTACK'
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which you want to attach a policy. </p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy you want to associate with a resource. </p>
    #            <p>For an example policy, see <a href="https://docs.aws.amazon.com/cloudhsm/latest/userguide/sharing.html"> Working with shared backups</a> in the CloudHSM User Guide</p>
    #   @return [String]
    class PutResourcePolicyRequest < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>Amazon Resource Name (ARN) of the resource to which a policy is attached.</p>
    #   @return [String]
    # @!attribute policy
    #   <p>The policy attached to a resource.</p>
    #   @return [String]
    class PutResourcePolicyResponse < Struct.new(
      :resource_arn,
      :policy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup_id
    #   <p>The ID of the backup to be restored. To find the ID of a backup, use the <a>DescribeBackups</a> operation.</p>
    #   @return [String]
    class RestoreBackupRequest < Struct.new(
      :backup_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute backup
    #   <p>Information on the <code>Backup</code> object created.</p>
    #   @return [Types::Backup]
    class RestoreBackupResponse < Struct.new(
      :backup,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Contains a tag. A tag is a key-value pair.</p>
    # @!attribute key
    #   <p>The key of the tag.</p>
    #   @return [String]
    # @!attribute value
    #   <p>The value of the tag.</p>
    #   @return [String]
    class Tag < Struct.new(
      :key,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The cluster identifier (ID) for the cluster that you are tagging. To find the cluster
    #         ID, use <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute tag_list
    #   <p>A list of one or more tags.</p>
    #   @return [Array<Types::Tag>]
    class TagResourceRequest < Struct.new(
      :resource_id,
      :tag_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute resource_id
    #   <p>The cluster identifier (ID) for the cluster whose tags you are removing. To find the
    #         cluster ID, use <a>DescribeClusters</a>.</p>
    #   @return [String]
    # @!attribute tag_key_list
    #   <p>A list of one or more tag keys for the tags that you are removing. Specify only the tag
    #         keys, not the tag values.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_id,
      :tag_key_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
