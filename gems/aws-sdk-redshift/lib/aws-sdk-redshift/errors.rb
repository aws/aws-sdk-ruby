# frozen_string_literal: true

# This is generated code!

module Aws::Redshift
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Redshift::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Redshift::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {AccessToClusterDeniedFault}
  # * {AccessToSnapshotDeniedFault}
  # * {AuthenticationProfileAlreadyExistsFault}
  # * {AuthenticationProfileNotFoundFault}
  # * {AuthenticationProfileQuotaExceededFault}
  # * {AuthorizationAlreadyExistsFault}
  # * {AuthorizationNotFoundFault}
  # * {AuthorizationQuotaExceededFault}
  # * {BatchDeleteRequestSizeExceededFault}
  # * {BatchModifyClusterSnapshotsLimitExceededFault}
  # * {BucketNotFoundFault}
  # * {ClusterAlreadyExistsFault}
  # * {ClusterNotFoundFault}
  # * {ClusterOnLatestRevisionFault}
  # * {ClusterParameterGroupAlreadyExistsFault}
  # * {ClusterParameterGroupNotFoundFault}
  # * {ClusterParameterGroupQuotaExceededFault}
  # * {ClusterQuotaExceededFault}
  # * {ClusterSecurityGroupAlreadyExistsFault}
  # * {ClusterSecurityGroupNotFoundFault}
  # * {ClusterSecurityGroupQuotaExceededFault}
  # * {ClusterSnapshotAlreadyExistsFault}
  # * {ClusterSnapshotNotFoundFault}
  # * {ClusterSnapshotQuotaExceededFault}
  # * {ClusterSubnetGroupAlreadyExistsFault}
  # * {ClusterSubnetGroupNotFoundFault}
  # * {ClusterSubnetGroupQuotaExceededFault}
  # * {ClusterSubnetQuotaExceededFault}
  # * {ConflictPolicyUpdateFault}
  # * {CopyToRegionDisabledFault}
  # * {CustomCnameAssociationFault}
  # * {CustomDomainAssociationNotFoundFault}
  # * {DependentServiceAccessDeniedFault}
  # * {DependentServiceRequestThrottlingFault}
  # * {DependentServiceUnavailableFault}
  # * {EndpointAlreadyExistsFault}
  # * {EndpointAuthorizationAlreadyExistsFault}
  # * {EndpointAuthorizationNotFoundFault}
  # * {EndpointAuthorizationsPerClusterLimitExceededFault}
  # * {EndpointNotFoundFault}
  # * {EndpointsPerAuthorizationLimitExceededFault}
  # * {EndpointsPerClusterLimitExceededFault}
  # * {EventSubscriptionQuotaExceededFault}
  # * {HsmClientCertificateAlreadyExistsFault}
  # * {HsmClientCertificateNotFoundFault}
  # * {HsmClientCertificateQuotaExceededFault}
  # * {HsmConfigurationAlreadyExistsFault}
  # * {HsmConfigurationNotFoundFault}
  # * {HsmConfigurationQuotaExceededFault}
  # * {InProgressTableRestoreQuotaExceededFault}
  # * {IncompatibleOrderableOptions}
  # * {InsufficientClusterCapacityFault}
  # * {InsufficientS3BucketPolicyFault}
  # * {IntegrationAlreadyExistsFault}
  # * {IntegrationConflictOperationFault}
  # * {IntegrationConflictStateFault}
  # * {IntegrationNotFoundFault}
  # * {IntegrationQuotaExceededFault}
  # * {IntegrationSourceNotFoundFault}
  # * {IntegrationTargetNotFoundFault}
  # * {InvalidAuthenticationProfileRequestFault}
  # * {InvalidAuthorizationStateFault}
  # * {InvalidClusterParameterGroupStateFault}
  # * {InvalidClusterSecurityGroupStateFault}
  # * {InvalidClusterSnapshotScheduleStateFault}
  # * {InvalidClusterSnapshotStateFault}
  # * {InvalidClusterStateFault}
  # * {InvalidClusterSubnetGroupStateFault}
  # * {InvalidClusterSubnetStateFault}
  # * {InvalidClusterTrackFault}
  # * {InvalidDataShareFault}
  # * {InvalidElasticIpFault}
  # * {InvalidEndpointStateFault}
  # * {InvalidHsmClientCertificateStateFault}
  # * {InvalidHsmConfigurationStateFault}
  # * {InvalidNamespaceFault}
  # * {InvalidPolicyFault}
  # * {InvalidReservedNodeStateFault}
  # * {InvalidRestoreFault}
  # * {InvalidRetentionPeriodFault}
  # * {InvalidS3BucketNameFault}
  # * {InvalidS3KeyPrefixFault}
  # * {InvalidScheduleFault}
  # * {InvalidScheduledActionFault}
  # * {InvalidSnapshotCopyGrantStateFault}
  # * {InvalidSubnet}
  # * {InvalidSubscriptionStateFault}
  # * {InvalidTableRestoreArgumentFault}
  # * {InvalidTagFault}
  # * {InvalidUsageLimitFault}
  # * {InvalidVPCNetworkStateFault}
  # * {Ipv6CidrBlockNotFoundFault}
  # * {LimitExceededFault}
  # * {NumberOfNodesPerClusterLimitExceededFault}
  # * {NumberOfNodesQuotaExceededFault}
  # * {PartnerNotFoundFault}
  # * {RedshiftIdcApplicationAlreadyExistsFault}
  # * {RedshiftIdcApplicationNotExistsFault}
  # * {RedshiftIdcApplicationQuotaExceededFault}
  # * {ReservedNodeAlreadyExistsFault}
  # * {ReservedNodeAlreadyMigratedFault}
  # * {ReservedNodeExchangeNotFoundFault}
  # * {ReservedNodeNotFoundFault}
  # * {ReservedNodeOfferingNotFoundFault}
  # * {ReservedNodeQuotaExceededFault}
  # * {ResizeNotFoundFault}
  # * {ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  # * {SNSNoAuthorizationFault}
  # * {SNSTopicArnNotFoundFault}
  # * {ScheduleDefinitionTypeUnsupportedFault}
  # * {ScheduledActionAlreadyExistsFault}
  # * {ScheduledActionNotFoundFault}
  # * {ScheduledActionQuotaExceededFault}
  # * {ScheduledActionTypeUnsupportedFault}
  # * {SnapshotCopyAlreadyDisabledFault}
  # * {SnapshotCopyAlreadyEnabledFault}
  # * {SnapshotCopyDisabledFault}
  # * {SnapshotCopyGrantAlreadyExistsFault}
  # * {SnapshotCopyGrantNotFoundFault}
  # * {SnapshotCopyGrantQuotaExceededFault}
  # * {SnapshotScheduleAlreadyExistsFault}
  # * {SnapshotScheduleNotFoundFault}
  # * {SnapshotScheduleQuotaExceededFault}
  # * {SnapshotScheduleUpdateInProgressFault}
  # * {SourceNotFoundFault}
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  # * {SubscriptionCategoryNotFoundFault}
  # * {SubscriptionEventIdNotFoundFault}
  # * {SubscriptionNotFoundFault}
  # * {SubscriptionSeverityNotFoundFault}
  # * {TableLimitExceededFault}
  # * {TableRestoreNotFoundFault}
  # * {TagLimitExceededFault}
  # * {UnauthorizedOperation}
  # * {UnauthorizedPartnerIntegrationFault}
  # * {UnknownSnapshotCopyRegionFault}
  # * {UnsupportedOperationFault}
  # * {UnsupportedOptionFault}
  # * {UsageLimitAlreadyExistsFault}
  # * {UsageLimitNotFoundFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You are not authorized to access the cluster.</p>
    class AccessToClusterDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AccessToClusterDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The owner of the specified snapshot has not authorized your account to access the
    #             snapshot.</p>
    class AccessToSnapshotDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AccessToSnapshotDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authentication profile already exists.</p>
    class AuthenticationProfileAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthenticationProfileAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authentication profile can't be found.</p>
    class AuthenticationProfileNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthenticationProfileNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The size or number of authentication profiles has exceeded the quota.
    #             The maximum length of the JSON string and maximum number of authentication profiles is determined by a quota for your account.</p>
    class AuthenticationProfileQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthenticationProfileQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CIDR block or EC2 security group is already authorized for the
    #             specified cluster security group.</p>
    class AuthorizationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified CIDR IP range or EC2 security group is not authorized for the
    #             specified cluster security group.</p>
    class AuthorizationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthorizationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authorization quota for the cluster security group has been reached.</p>
    class AuthorizationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::AuthorizationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number for a batch delete of snapshots has been reached. The limit is
    #             100. </p>
    class BatchDeleteRequestSizeExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::BatchDeleteRequestSizeExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number for snapshot identifiers has been reached. The limit is 100.
    #         </p>
    class BatchModifyClusterSnapshotsLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::BatchModifyClusterSnapshotsLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Could not find the specified S3 bucket.</p>
    class BucketNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::BucketNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The account already has a cluster with the given identifier.</p>
    class ClusterAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>ClusterIdentifier</code> parameter does not refer to an existing cluster.
    #         </p>
    class ClusterNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cluster is already on the latest database revision.</p>
    class ClusterOnLatestRevisionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterOnLatestRevisionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A cluster parameter group with the same name already exists.</p>
    class ClusterParameterGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterParameterGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameter group name does not refer to an existing parameter group.</p>
    class ClusterParameterGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterParameterGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             parameter groups. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ClusterParameterGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterParameterGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would exceed the allowed number of cluster instances for this account.
    #             
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ClusterQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A cluster security group with the same name already exists.</p>
    class ClusterSecurityGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSecurityGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster security group name does not refer to an existing cluster security
    #             group.</p>
    class ClusterSecurityGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSecurityGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             security groups. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ClusterSecurityGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSecurityGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The value specified as a snapshot identifier is already used by an existing
    #             snapshot.</p>
    class ClusterSnapshotAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSnapshotAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The snapshot identifier does not refer to an existing cluster snapshot.</p>
    class ClusterSnapshotNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSnapshotNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in the user exceeding the allowed number of cluster
    #             snapshots.</p>
    class ClusterSnapshotQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSnapshotQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A <i>ClusterSubnetGroupName</i> is already used by an existing
    #             cluster subnet group. </p>
    class ClusterSubnetGroupAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSubnetGroupAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster subnet group name does not refer to an existing cluster subnet
    #             group.</p>
    class ClusterSubnetGroupNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSubnetGroupNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in user exceeding the allowed number of cluster subnet
    #             groups. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ClusterSubnetGroupQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSubnetGroupQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would result in user exceeding the allowed number of subnets in a
    #             cluster subnet groups. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ClusterSubnetQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ClusterSubnetQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is a conflict while updating the resource policy.</p>
    class ConflictPolicyUpdateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ConflictPolicyUpdateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cross-region snapshot copy was temporarily disabled. Try your request
    #             again.</p>
    class CopyToRegionDisabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::CopyToRegionDisabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred when an attempt was made to change the custom domain association.</p>
    class CustomCnameAssociationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::CustomCnameAssociationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An error occurred. The custom domain name couldn't be found.</p>
    class CustomDomainAssociationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::CustomDomainAssociationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A dependent service denied access for the integration.</p>
    class DependentServiceAccessDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::DependentServiceAccessDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request cannot be completed because a dependent service is throttling requests
    #             made by Amazon Redshift on your behalf. Wait and retry the request.</p>
    class DependentServiceRequestThrottlingFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::DependentServiceRequestThrottlingFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request cannot be completed because a dependent internal service is
    #             temporarily unavailable. Wait 30 to 60 seconds and try again.</p>
    class DependentServiceUnavailableFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::DependentServiceUnavailableFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The account already has a Redshift-managed VPC endpoint with the given identifier.</p>
    class EndpointAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authorization already exists for this endpoint.</p>
    class EndpointAuthorizationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointAuthorizationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authorization for this endpoint can't be found.</p>
    class EndpointAuthorizationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointAuthorizationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of endpoint authorizations per cluster has exceeded its limit.</p>
    class EndpointAuthorizationsPerClusterLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointAuthorizationsPerClusterLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The endpoint name doesn't refer to an existing endpoint.</p>
    class EndpointNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of Redshift-managed VPC endpoints per authorization has exceeded its limit.</p>
    class EndpointsPerAuthorizationLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointsPerAuthorizationLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of Redshift-managed VPC endpoints per cluster has exceeded its limit.</p>
    class EndpointsPerClusterLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EndpointsPerClusterLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request would exceed the allowed number of event subscriptions for this
    #             account. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class EventSubscriptionQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is already an existing Amazon Redshift HSM client certificate with the specified
    #             identifier.</p>
    class HsmClientCertificateAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmClientCertificateAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no Amazon Redshift HSM client certificate with the specified
    #             identifier.</p>
    class HsmClientCertificateNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmClientCertificateNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for HSM client certificates has been reached. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class HsmClientCertificateQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmClientCertificateQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is already an existing Amazon Redshift HSM configuration with the specified
    #             identifier.</p>
    class HsmConfigurationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmConfigurationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is no Amazon Redshift HSM configuration with the specified identifier.</p>
    class HsmConfigurationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmConfigurationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for HSM configurations has been reached. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class HsmConfigurationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::HsmConfigurationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the allowed number of table restore requests. Wait for your
    #             current table restore requests to complete before making a new request.</p>
    class InProgressTableRestoreQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InProgressTableRestoreQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified options are incompatible.</p>
    class IncompatibleOrderableOptions < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IncompatibleOrderableOptions] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of nodes specified exceeds the allotted capacity of the
    #             cluster.</p>
    class InsufficientClusterCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InsufficientClusterCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster does not have read bucket or put object permissions on the S3 bucket
    #             specified when enabling logging.</p>
    class InsufficientS3BucketPolicyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InsufficientS3BucketPolicyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The integration you are trying to create already exists.</p>
    class IntegrationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A conflicting conditional operation is currently in progress against this resource.
    #             This typically occurs when there are multiple requests being made to the same resource at the same time,
    #             and these requests conflict with each other.</p>
    class IntegrationConflictOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationConflictOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The integration is in an invalid state and can't perform the requested operation.</p>
    class IntegrationConflictStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationConflictStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The integration can't be found.</p>
    class IntegrationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You can't create any more zero-ETL or S3 event integrations because the quota has been reached.</p>
    class IntegrationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified integration source can't be found.</p>
    class IntegrationSourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationSourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified integration target can't be found.</p>
    class IntegrationTargetNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::IntegrationTargetNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The authentication profile request is not valid. The profile name can't be null or empty. 
    #             The authentication profile API operation must be available in the Amazon Web Services Region.</p>
    class InvalidAuthenticationProfileRequestFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidAuthenticationProfileRequestFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The status of the authorization is not valid.</p>
    class InvalidAuthorizationStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidAuthorizationStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster parameter group action can not be completed because another task is in
    #             progress that involves the parameter group. Wait a few moments and try the operation
    #             again.</p>
    class InvalidClusterParameterGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterParameterGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the cluster security group is not <code>available</code>. </p>
    class InvalidClusterSecurityGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterSecurityGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster snapshot schedule state is not valid.</p>
    class InvalidClusterSnapshotScheduleStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterSnapshotScheduleStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified cluster snapshot is not in the <code>available</code> state, or other
    #             accounts are authorized to access the snapshot. </p>
    class InvalidClusterSnapshotStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterSnapshotStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified cluster is not in the <code>available</code> state. </p>
    class InvalidClusterStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster subnet group cannot be deleted because it is in use.</p>
    class InvalidClusterSubnetGroupStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterSubnetGroupStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the subnet is invalid.</p>
    class InvalidClusterSubnetStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterSubnetStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The provided cluster track name is not valid.</p>
    class InvalidClusterTrackFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidClusterTrackFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is an error with the datashare.</p>
    class InvalidDataShareFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidDataShareFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Elastic IP (EIP) is invalid or cannot be found.</p>
    class InvalidElasticIpFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidElasticIpFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The status of the endpoint is not valid.</p>
    class InvalidEndpointStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidEndpointStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified HSM client certificate is not in the <code>available</code> state, or
    #             it is still in use by one or more Amazon Redshift clusters.</p>
    class InvalidHsmClientCertificateStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidHsmClientCertificateStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified HSM configuration is not in the <code>available</code> state, or it
    #             is still in use by one or more Amazon Redshift clusters.</p>
    class InvalidHsmConfigurationStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidHsmConfigurationStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The namespace isn't valid because the namespace doesn't exist. Provide a valid namespace.</p>
    class InvalidNamespaceFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidNamespaceFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource policy isn't valid.</p>
    class InvalidPolicyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidPolicyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the Reserved Node being exchanged is not in an active state.</p>
    class InvalidReservedNodeStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidReservedNodeStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The restore is invalid.</p>
    class InvalidRestoreFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidRestoreFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The retention period specified is either in the past or is not a valid value.</p>
    #          <p>The value must be either -1 or an integer between 1 and 3,653.</p>
    class InvalidRetentionPeriodFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidRetentionPeriodFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The S3 bucket name is invalid. For more information about naming rules, go to
    #                 <a href="https://docs.aws.amazon.com/AmazonS3/latest/dev/BucketRestrictions.html">Bucket
    #                 Restrictions and Limitations</a> in the Amazon Simple Storage Service (S3)
    #             Developer Guide.</p>
    class InvalidS3BucketNameFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidS3BucketNameFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The string specified for the logging S3 key prefix does not comply with the
    #             documented constraints.</p>
    class InvalidS3KeyPrefixFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidS3KeyPrefixFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The schedule you submitted isn't valid.</p>
    class InvalidScheduleFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidScheduleFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The scheduled action is not valid. </p>
    class InvalidScheduledActionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidScheduledActionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The snapshot copy grant can't be deleted because it is used by one or more
    #             clusters.</p>
    class InvalidSnapshotCopyGrantStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidSnapshotCopyGrantStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested subnet is not valid, or not all of the subnets are in the same
    #             VPC.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The subscription request is invalid because it is a duplicate request. This
    #             subscription request is already in progress.</p>
    class InvalidSubscriptionStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidSubscriptionStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The value specified for the <code>sourceDatabaseName</code>,
    #                 <code>sourceSchemaName</code>, or <code>sourceTableName</code> parameter, or a
    #             combination of these, doesn't exist in the snapshot.</p>
    class InvalidTableRestoreArgumentFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidTableRestoreArgumentFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The tag is invalid.</p>
    class InvalidTagFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidTagFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The usage limit is not valid.</p>
    class InvalidUsageLimitFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidUsageLimitFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster subnet group does not cover all Availability Zones.</p>
    class InvalidVPCNetworkStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There are no subnets in your VPC with associated IPv6 CIDR blocks. To use dual-stack mode,
    #             associate an IPv6 CIDR block with each subnet in your VPC.</p>
    class Ipv6CidrBlockNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::Ipv6CidrBlockNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The encryption key has exceeded its grant limit in Amazon Web Services KMS.</p>
    class LimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::LimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation would exceed the number of nodes allowed for a cluster.</p>
    class NumberOfNodesPerClusterLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::NumberOfNodesPerClusterLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation would exceed the number of nodes allotted to the account.
    #             
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class NumberOfNodesQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::NumberOfNodesQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The name of the partner was not found.</p>
    class PartnerNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::PartnerNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The application you attempted to add already exists.</p>
    class RedshiftIdcApplicationAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The application you attempted to find doesn't exist.</p>
    class RedshiftIdcApplicationNotExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationNotExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The maximum number of Redshift IAM Identity Center applications was exceeded.</p>
    class RedshiftIdcApplicationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>User already has a reservation with the given identifier.</p>
    class ReservedNodeAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Indicates that the reserved node has already been exchanged.</p>
    class ReservedNodeAlreadyMigratedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeAlreadyMigratedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The reserved-node exchange status wasn't found.</p>
    class ReservedNodeExchangeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeExchangeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified reserved compute node not found.</p>
    class ReservedNodeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Specified offering does not exist.</p>
    class ReservedNodeOfferingNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeOfferingNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Request would exceed the user's compute node quota. 
    # For information about increasing your quota, go to <a href="https://docs.aws.amazon.com/redshift/latest/mgmt/amazon-redshift-limits.html">Limits in Amazon Redshift</a> 
    # in the <i>Amazon Redshift Cluster Management Guide</i>.
    # </p>
    class ReservedNodeQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ReservedNodeQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A resize operation for the specified cluster is not found.</p>
    class ResizeNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ResizeNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ResourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon SNS has responded that there is a problem with the specified Amazon SNS
    #             topic.</p>
    class SNSInvalidTopicFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SNSInvalidTopicFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You do not have permission to publish to the specified Amazon SNS topic.</p>
    class SNSNoAuthorizationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SNSNoAuthorizationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An Amazon SNS topic with the specified Amazon Resource Name (ARN) does not
    #             exist.</p>
    class SNSTopicArnNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The definition you submitted is not supported.</p>
    class ScheduleDefinitionTypeUnsupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ScheduleDefinitionTypeUnsupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The scheduled action already exists. </p>
    class ScheduledActionAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ScheduledActionAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The scheduled action cannot be found. </p>
    class ScheduledActionNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ScheduledActionNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for scheduled actions exceeded. </p>
    class ScheduledActionQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ScheduledActionQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The action type specified for a scheduled action is not supported. </p>
    class ScheduledActionTypeUnsupportedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::ScheduledActionTypeUnsupportedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster already has cross-region snapshot copy disabled.</p>
    class SnapshotCopyAlreadyDisabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyAlreadyDisabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The cluster already has cross-region snapshot copy enabled.</p>
    class SnapshotCopyAlreadyEnabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyAlreadyEnabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Cross-region snapshot copy was temporarily disabled. Try your request
    #             again.</p>
    class SnapshotCopyDisabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyDisabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The snapshot copy grant can't be created because a grant with the same name already
    #             exists.</p>
    class SnapshotCopyGrantAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyGrantAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified snapshot copy grant can't be found. Make sure that the name is typed
    #             correctly and that the grant exists in the destination region.</p>
    class SnapshotCopyGrantNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyGrantNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The Amazon Web Services account has exceeded the maximum number of snapshot copy grants in this
    #             region.</p>
    class SnapshotCopyGrantQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotCopyGrantQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified snapshot schedule already exists. </p>
    class SnapshotScheduleAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotScheduleAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>We could not find the specified snapshot schedule. </p>
    class SnapshotScheduleNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotScheduleNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the quota of snapshot schedules. </p>
    class SnapshotScheduleQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotScheduleQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified snapshot schedule is already being updated.</p>
    class SnapshotScheduleUpdateInProgressFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SnapshotScheduleUpdateInProgressFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon Redshift event source could not be found.</p>
    class SourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified subnet is already in use by another cluster.</p>
    class SubnetAlreadyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubnetAlreadyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>There is already an existing event notification subscription with the specified
    #             name.</p>
    class SubscriptionAlreadyExistFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The value specified for the event category was not one of the allowed values, or it
    #             specified a category that does not apply to the specified source type. The allowed
    #             values are Configuration, Management, Monitoring, and Security.</p>
    class SubscriptionCategoryNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An Amazon Redshift event with the specified event ID does not exist.</p>
    class SubscriptionEventIdNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubscriptionEventIdNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>An Amazon Redshift event notification subscription with the specified name does not
    #             exist.</p>
    class SubscriptionNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubscriptionNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The value specified for the event severity was not one of the allowed values, or it
    #             specified a severity that does not apply to the specified source type. The allowed
    #             values are ERROR and INFO.</p>
    class SubscriptionSeverityNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::SubscriptionSeverityNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The number of tables in the cluster exceeds the limit for the requested new cluster
    #             node type. </p>
    class TableLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::TableLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified <code>TableRestoreRequestId</code> value was not found.</p>
    class TableRestoreNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::TableRestoreNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You have exceeded the number of tags allowed.</p>
    class TagLimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::TagLimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Your account is not authorized to perform the requested operation.</p>
    class UnauthorizedOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UnauthorizedOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The partner integration is not authorized.</p>
    class UnauthorizedPartnerIntegrationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UnauthorizedPartnerIntegrationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified region is incorrect or does not exist.</p>
    class UnknownSnapshotCopyRegionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UnknownSnapshotCopyRegionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested operation isn't supported.</p>
    class UnsupportedOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UnsupportedOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A request option was specified that is not supported.</p>
    class UnsupportedOptionFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UnsupportedOptionFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The usage limit already exists. </p>
    class UsageLimitAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UsageLimitAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The usage limit identifier can't be found.</p>
    class UsageLimitNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Redshift::Types::UsageLimitNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
