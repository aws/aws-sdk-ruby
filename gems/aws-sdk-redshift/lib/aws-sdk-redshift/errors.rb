# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Redshift

  # When Redshift returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Redshift::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Redshift errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Redshift::Errors::ServiceError
  #       # rescues all Redshift API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessToClusterDeniedFault}
  #    * This error class is not used. `AccessToClusterDenied` is used during parsing instead.
  # * {AccessToSnapshotDeniedFault}
  #    * This error class is not used. `AccessToSnapshotDenied` is used during parsing instead.
  # * {AuthenticationProfileAlreadyExistsFault}
  # * {AuthenticationProfileNotFoundFault}
  # * {AuthenticationProfileQuotaExceededFault}
  # * {AuthorizationAlreadyExistsFault}
  #    * This error class is not used. `AuthorizationAlreadyExists` is used during parsing instead.
  # * {AuthorizationNotFoundFault}
  #    * This error class is not used. `AuthorizationNotFound` is used during parsing instead.
  # * {AuthorizationQuotaExceededFault}
  #    * This error class is not used. `AuthorizationQuotaExceeded` is used during parsing instead.
  # * {BatchDeleteRequestSizeExceededFault}
  #    * This error class is not used. `BatchDeleteRequestSizeExceeded` is used during parsing instead.
  # * {BatchModifyClusterSnapshotsLimitExceededFault}
  # * {BucketNotFoundFault}
  # * {ClusterAlreadyExistsFault}
  #    * This error class is not used. `ClusterAlreadyExists` is used during parsing instead.
  # * {ClusterNotFoundFault}
  #    * This error class is not used. `ClusterNotFound` is used during parsing instead.
  # * {ClusterOnLatestRevisionFault}
  #    * This error class is not used. `ClusterOnLatestRevision` is used during parsing instead.
  # * {ClusterParameterGroupAlreadyExistsFault}
  #    * This error class is not used. `ClusterParameterGroupAlreadyExists` is used during parsing instead.
  # * {ClusterParameterGroupNotFoundFault}
  #    * This error class is not used. `ClusterParameterGroupNotFound` is used during parsing instead.
  # * {ClusterParameterGroupQuotaExceededFault}
  #    * This error class is not used. `ClusterParameterGroupQuotaExceeded` is used during parsing instead.
  # * {ClusterQuotaExceededFault}
  #    * This error class is not used. `ClusterQuotaExceeded` is used during parsing instead.
  # * {ClusterSecurityGroupAlreadyExistsFault}
  #    * This error class is not used. `ClusterSecurityGroupAlreadyExists` is used during parsing instead.
  # * {ClusterSecurityGroupNotFoundFault}
  #    * This error class is not used. `ClusterSecurityGroupNotFound` is used during parsing instead.
  # * {ClusterSecurityGroupQuotaExceededFault}
  #    * This error class is not used. `QuotaExceeded.ClusterSecurityGroup` is used during parsing instead.
  # * {ClusterSnapshotAlreadyExistsFault}
  #    * This error class is not used. `ClusterSnapshotAlreadyExists` is used during parsing instead.
  # * {ClusterSnapshotNotFoundFault}
  #    * This error class is not used. `ClusterSnapshotNotFound` is used during parsing instead.
  # * {ClusterSnapshotQuotaExceededFault}
  #    * This error class is not used. `ClusterSnapshotQuotaExceeded` is used during parsing instead.
  # * {ClusterSubnetGroupAlreadyExistsFault}
  #    * This error class is not used. `ClusterSubnetGroupAlreadyExists` is used during parsing instead.
  # * {ClusterSubnetGroupNotFoundFault}
  # * {ClusterSubnetGroupQuotaExceededFault}
  #    * This error class is not used. `ClusterSubnetGroupQuotaExceeded` is used during parsing instead.
  # * {ClusterSubnetQuotaExceededFault}
  # * {ConflictPolicyUpdateFault}
  # * {CopyToRegionDisabledFault}
  # * {CustomCnameAssociationFault}
  # * {CustomDomainAssociationNotFoundFault}
  # * {DependentServiceAccessDeniedFault}
  #    * This error class is not used. `DependentServiceAccessDenied` is used during parsing instead.
  # * {DependentServiceRequestThrottlingFault}
  # * {DependentServiceUnavailableFault}
  # * {EndpointAlreadyExistsFault}
  #    * This error class is not used. `EndpointAlreadyExists` is used during parsing instead.
  # * {EndpointAuthorizationAlreadyExistsFault}
  #    * This error class is not used. `EndpointAuthorizationAlreadyExists` is used during parsing instead.
  # * {EndpointAuthorizationNotFoundFault}
  #    * This error class is not used. `EndpointAuthorizationNotFound` is used during parsing instead.
  # * {EndpointAuthorizationsPerClusterLimitExceededFault}
  #    * This error class is not used. `EndpointAuthorizationsPerClusterLimitExceeded` is used during parsing instead.
  # * {EndpointNotFoundFault}
  #    * This error class is not used. `EndpointNotFound` is used during parsing instead.
  # * {EndpointsPerAuthorizationLimitExceededFault}
  #    * This error class is not used. `EndpointsPerAuthorizationLimitExceeded` is used during parsing instead.
  # * {EndpointsPerClusterLimitExceededFault}
  #    * This error class is not used. `EndpointsPerClusterLimitExceeded` is used during parsing instead.
  # * {EventSubscriptionQuotaExceededFault}
  #    * This error class is not used. `EventSubscriptionQuotaExceeded` is used during parsing instead.
  # * {HsmClientCertificateAlreadyExistsFault}
  # * {HsmClientCertificateNotFoundFault}
  # * {HsmClientCertificateQuotaExceededFault}
  # * {HsmConfigurationAlreadyExistsFault}
  # * {HsmConfigurationNotFoundFault}
  # * {HsmConfigurationQuotaExceededFault}
  # * {InProgressTableRestoreQuotaExceededFault}
  # * {IncompatibleOrderableOptions}
  # * {InsufficientClusterCapacityFault}
  #    * This error class is not used. `InsufficientClusterCapacity` is used during parsing instead.
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
  #    * This error class is not used. `InvalidAuthorizationState` is used during parsing instead.
  # * {InvalidClusterParameterGroupStateFault}
  #    * This error class is not used. `InvalidClusterParameterGroupState` is used during parsing instead.
  # * {InvalidClusterSecurityGroupStateFault}
  #    * This error class is not used. `InvalidClusterSecurityGroupState` is used during parsing instead.
  # * {InvalidClusterSnapshotScheduleStateFault}
  #    * This error class is not used. `InvalidClusterSnapshotScheduleState` is used during parsing instead.
  # * {InvalidClusterSnapshotStateFault}
  #    * This error class is not used. `InvalidClusterSnapshotState` is used during parsing instead.
  # * {InvalidClusterStateFault}
  #    * This error class is not used. `InvalidClusterState` is used during parsing instead.
  # * {InvalidClusterSubnetGroupStateFault}
  # * {InvalidClusterSubnetStateFault}
  # * {InvalidClusterTrackFault}
  #    * This error class is not used. `InvalidClusterTrack` is used during parsing instead.
  # * {InvalidDataShareFault}
  # * {InvalidElasticIpFault}
  # * {InvalidEndpointStateFault}
  #    * This error class is not used. `InvalidEndpointState` is used during parsing instead.
  # * {InvalidHsmClientCertificateStateFault}
  # * {InvalidHsmConfigurationStateFault}
  # * {InvalidNamespaceFault}
  # * {InvalidPolicyFault}
  # * {InvalidReservedNodeStateFault}
  #    * This error class is not used. `InvalidReservedNodeState` is used during parsing instead.
  # * {InvalidRestoreFault}
  #    * This error class is not used. `InvalidRestore` is used during parsing instead.
  # * {InvalidRetentionPeriodFault}
  # * {InvalidS3BucketNameFault}
  # * {InvalidS3KeyPrefixFault}
  # * {InvalidScheduleFault}
  #    * This error class is not used. `InvalidSchedule` is used during parsing instead.
  # * {InvalidScheduledActionFault}
  #    * This error class is not used. `InvalidScheduledAction` is used during parsing instead.
  # * {InvalidSnapshotCopyGrantStateFault}
  # * {InvalidSubnet}
  # * {InvalidSubscriptionStateFault}
  # * {InvalidTableRestoreArgumentFault}
  #    * This error class is not used. `InvalidTableRestoreArgument` is used during parsing instead.
  # * {InvalidTagFault}
  # * {InvalidUsageLimitFault}
  #    * This error class is not used. `InvalidUsageLimit` is used during parsing instead.
  # * {InvalidVPCNetworkStateFault}
  # * {Ipv6CidrBlockNotFoundFault}
  # * {LimitExceededFault}
  # * {NumberOfNodesPerClusterLimitExceededFault}
  #    * This error class is not used. `NumberOfNodesPerClusterLimitExceeded` is used during parsing instead.
  # * {NumberOfNodesQuotaExceededFault}
  #    * This error class is not used. `NumberOfNodesQuotaExceeded` is used during parsing instead.
  # * {PartnerNotFoundFault}
  #    * This error class is not used. `PartnerNotFound` is used during parsing instead.
  # * {RedshiftIdcApplicationAlreadyExistsFault}
  #    * This error class is not used. `RedshiftIdcApplicationAlreadyExists` is used during parsing instead.
  # * {RedshiftIdcApplicationNotExistsFault}
  #    * This error class is not used. `RedshiftIdcApplicationNotExists` is used during parsing instead.
  # * {RedshiftIdcApplicationQuotaExceededFault}
  #    * This error class is not used. `RedshiftIdcApplicationQuotaExceeded` is used during parsing instead.
  # * {RedshiftInvalidParameterFault}
  #    * This error class is not used. `RedshiftInvalidParameter` is used during parsing instead.
  # * {ReservedNodeAlreadyExistsFault}
  #    * This error class is not used. `ReservedNodeAlreadyExists` is used during parsing instead.
  # * {ReservedNodeAlreadyMigratedFault}
  #    * This error class is not used. `ReservedNodeAlreadyMigrated` is used during parsing instead.
  # * {ReservedNodeExchangeNotFoundFault}
  #    * This error class is not used. `ReservedNodeExchangeNotFond` is used during parsing instead.
  # * {ReservedNodeNotFoundFault}
  #    * This error class is not used. `ReservedNodeNotFound` is used during parsing instead.
  # * {ReservedNodeOfferingNotFoundFault}
  #    * This error class is not used. `ReservedNodeOfferingNotFound` is used during parsing instead.
  # * {ReservedNodeQuotaExceededFault}
  #    * This error class is not used. `ReservedNodeQuotaExceeded` is used during parsing instead.
  # * {ResizeNotFoundFault}
  #    * This error class is not used. `ResizeNotFound` is used during parsing instead.
  # * {ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  #    * This error class is not used. `SNSInvalidTopic` is used during parsing instead.
  # * {SNSNoAuthorizationFault}
  #    * This error class is not used. `SNSNoAuthorization` is used during parsing instead.
  # * {SNSTopicArnNotFoundFault}
  #    * This error class is not used. `SNSTopicArnNotFound` is used during parsing instead.
  # * {ScheduleDefinitionTypeUnsupportedFault}
  #    * This error class is not used. `ScheduleDefinitionTypeUnsupported` is used during parsing instead.
  # * {ScheduledActionAlreadyExistsFault}
  #    * This error class is not used. `ScheduledActionAlreadyExists` is used during parsing instead.
  # * {ScheduledActionNotFoundFault}
  #    * This error class is not used. `ScheduledActionNotFound` is used during parsing instead.
  # * {ScheduledActionQuotaExceededFault}
  #    * This error class is not used. `ScheduledActionQuotaExceeded` is used during parsing instead.
  # * {ScheduledActionTypeUnsupportedFault}
  #    * This error class is not used. `ScheduledActionTypeUnsupported` is used during parsing instead.
  # * {SnapshotCopyAlreadyDisabledFault}
  # * {SnapshotCopyAlreadyEnabledFault}
  # * {SnapshotCopyDisabledFault}
  # * {SnapshotCopyGrantAlreadyExistsFault}
  # * {SnapshotCopyGrantNotFoundFault}
  # * {SnapshotCopyGrantQuotaExceededFault}
  # * {SnapshotScheduleAlreadyExistsFault}
  #    * This error class is not used. `SnapshotScheduleAlreadyExists` is used during parsing instead.
  # * {SnapshotScheduleNotFoundFault}
  #    * This error class is not used. `SnapshotScheduleNotFound` is used during parsing instead.
  # * {SnapshotScheduleQuotaExceededFault}
  #    * This error class is not used. `SnapshotScheduleQuotaExceeded` is used during parsing instead.
  # * {SnapshotScheduleUpdateInProgressFault}
  #    * This error class is not used. `SnapshotScheduleUpdateInProgress` is used during parsing instead.
  # * {SourceNotFoundFault}
  #    * This error class is not used. `SourceNotFound` is used during parsing instead.
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  #    * This error class is not used. `SubscriptionAlreadyExist` is used during parsing instead.
  # * {SubscriptionCategoryNotFoundFault}
  #    * This error class is not used. `SubscriptionCategoryNotFound` is used during parsing instead.
  # * {SubscriptionEventIdNotFoundFault}
  #    * This error class is not used. `SubscriptionEventIdNotFound` is used during parsing instead.
  # * {SubscriptionNotFoundFault}
  #    * This error class is not used. `SubscriptionNotFound` is used during parsing instead.
  # * {SubscriptionSeverityNotFoundFault}
  #    * This error class is not used. `SubscriptionSeverityNotFound` is used during parsing instead.
  # * {TableLimitExceededFault}
  #    * This error class is not used. `TableLimitExceeded` is used during parsing instead.
  # * {TableRestoreNotFoundFault}
  # * {TagLimitExceededFault}
  # * {UnauthorizedOperation}
  # * {UnauthorizedPartnerIntegrationFault}
  #    * This error class is not used. `UnauthorizedPartnerIntegration` is used during parsing instead.
  # * {UnknownSnapshotCopyRegionFault}
  # * {UnsupportedOperationFault}
  #    * This error class is not used. `UnsupportedOperation` is used during parsing instead.
  # * {UnsupportedOptionFault}
  # * {UsageLimitAlreadyExistsFault}
  #    * This error class is not used. `UsageLimitAlreadyExists` is used during parsing instead.
  # * {UsageLimitNotFoundFault}
  #    * This error class is not used. `UsageLimitNotFound` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `AccessToClusterDenied` instead.
    class AccessToClusterDeniedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AccessToClusterDeniedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AccessToSnapshotDenied` instead.
    class AccessToSnapshotDeniedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AccessToSnapshotDeniedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AuthenticationProfileAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthenticationProfileAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AuthenticationProfileNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthenticationProfileNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class AuthenticationProfileQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthenticationProfileQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationAlreadyExists` instead.
    class AuthorizationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthorizationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationNotFound` instead.
    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationQuotaExceeded` instead.
    class AuthorizationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::AuthorizationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `BatchDeleteRequestSizeExceeded` instead.
    class BatchDeleteRequestSizeExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::BatchDeleteRequestSizeExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BatchModifyClusterSnapshotsLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::BatchModifyClusterSnapshotsLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class BucketNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::BucketNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterAlreadyExists` instead.
    class ClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterNotFound` instead.
    class ClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterOnLatestRevision` instead.
    class ClusterOnLatestRevisionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterOnLatestRevisionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterParameterGroupAlreadyExists` instead.
    class ClusterParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterParameterGroupNotFound` instead.
    class ClusterParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterParameterGroupQuotaExceeded` instead.
    class ClusterParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterQuotaExceeded` instead.
    class ClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSecurityGroupAlreadyExists` instead.
    class ClusterSecurityGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSecurityGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSecurityGroupNotFound` instead.
    class ClusterSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `QuotaExceeded.ClusterSecurityGroup` instead.
    class ClusterSecurityGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSecurityGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSnapshotAlreadyExists` instead.
    class ClusterSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSnapshotNotFound` instead.
    class ClusterSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSnapshotQuotaExceeded` instead.
    class ClusterSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSubnetGroupAlreadyExists` instead.
    class ClusterSubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ClusterSubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ClusterSubnetGroupQuotaExceeded` instead.
    class ClusterSubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ClusterSubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ClusterSubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ConflictPolicyUpdateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ConflictPolicyUpdateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CopyToRegionDisabledFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::CopyToRegionDisabledFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomCnameAssociationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::CustomCnameAssociationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class CustomDomainAssociationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::CustomDomainAssociationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DependentServiceAccessDenied` instead.
    class DependentServiceAccessDeniedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::DependentServiceAccessDeniedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DependentServiceRequestThrottlingFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::DependentServiceRequestThrottlingFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DependentServiceUnavailableFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::DependentServiceUnavailableFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointAlreadyExists` instead.
    class EndpointAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointAuthorizationAlreadyExists` instead.
    class EndpointAuthorizationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointAuthorizationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointAuthorizationNotFound` instead.
    class EndpointAuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointAuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointAuthorizationsPerClusterLimitExceeded` instead.
    class EndpointAuthorizationsPerClusterLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointAuthorizationsPerClusterLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointNotFound` instead.
    class EndpointNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointsPerAuthorizationLimitExceeded` instead.
    class EndpointsPerAuthorizationLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointsPerAuthorizationLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EndpointsPerClusterLimitExceeded` instead.
    class EndpointsPerClusterLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EndpointsPerClusterLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EventSubscriptionQuotaExceeded` instead.
    class EventSubscriptionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmClientCertificateAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmClientCertificateAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmClientCertificateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmClientCertificateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmClientCertificateQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmClientCertificateQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmConfigurationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmConfigurationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmConfigurationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmConfigurationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class HsmConfigurationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::HsmConfigurationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InProgressTableRestoreQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InProgressTableRestoreQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IncompatibleOrderableOptions < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IncompatibleOrderableOptions] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientClusterCapacity` instead.
    class InsufficientClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InsufficientClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientS3BucketPolicyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InsufficientS3BucketPolicyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationConflictOperationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationConflictOperationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationConflictStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationConflictStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationSourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationSourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class IntegrationTargetNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::IntegrationTargetNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidAuthenticationProfileRequestFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidAuthenticationProfileRequestFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidAuthorizationState` instead.
    class InvalidAuthorizationStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidAuthorizationStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterParameterGroupState` instead.
    class InvalidClusterParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterSecurityGroupState` instead.
    class InvalidClusterSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterSnapshotScheduleState` instead.
    class InvalidClusterSnapshotScheduleStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterSnapshotScheduleStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterSnapshotState` instead.
    class InvalidClusterSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterState` instead.
    class InvalidClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidClusterSubnetGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterSubnetGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidClusterSubnetStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterSubnetStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidClusterTrack` instead.
    class InvalidClusterTrackFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidClusterTrackFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDataShareFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidDataShareFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidElasticIpFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidElasticIpFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidEndpointState` instead.
    class InvalidEndpointStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidEndpointStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidHsmClientCertificateStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidHsmClientCertificateStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidHsmConfigurationStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidHsmConfigurationStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidNamespaceFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidNamespaceFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidPolicyFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidPolicyFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidReservedNodeState` instead.
    class InvalidReservedNodeStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidReservedNodeStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidRestore` instead.
    class InvalidRestoreFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidRestoreFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRetentionPeriodFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidRetentionPeriodFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3BucketNameFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidS3BucketNameFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidS3KeyPrefixFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidS3KeyPrefixFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidSchedule` instead.
    class InvalidScheduleFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidScheduleFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidScheduledAction` instead.
    class InvalidScheduledActionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidScheduledActionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSnapshotCopyGrantStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidSnapshotCopyGrantStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubscriptionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidSubscriptionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidTableRestoreArgument` instead.
    class InvalidTableRestoreArgumentFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidTableRestoreArgumentFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidTagFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidTagFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidUsageLimit` instead.
    class InvalidUsageLimitFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidUsageLimitFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class Ipv6CidrBlockNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::Ipv6CidrBlockNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class LimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::LimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NumberOfNodesPerClusterLimitExceeded` instead.
    class NumberOfNodesPerClusterLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::NumberOfNodesPerClusterLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `NumberOfNodesQuotaExceeded` instead.
    class NumberOfNodesQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::NumberOfNodesQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `PartnerNotFound` instead.
    class PartnerNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::PartnerNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RedshiftIdcApplicationAlreadyExists` instead.
    class RedshiftIdcApplicationAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RedshiftIdcApplicationNotExists` instead.
    class RedshiftIdcApplicationNotExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationNotExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RedshiftIdcApplicationQuotaExceeded` instead.
    class RedshiftIdcApplicationQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::RedshiftIdcApplicationQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `RedshiftInvalidParameter` instead.
    class RedshiftInvalidParameterFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::RedshiftInvalidParameterFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeAlreadyExists` instead.
    class ReservedNodeAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeAlreadyMigrated` instead.
    class ReservedNodeAlreadyMigratedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeAlreadyMigratedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeExchangeNotFond` instead.
    class ReservedNodeExchangeNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeExchangeNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeNotFound` instead.
    class ReservedNodeNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeOfferingNotFound` instead.
    class ReservedNodeOfferingNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeOfferingNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ReservedNodeQuotaExceeded` instead.
    class ReservedNodeQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ReservedNodeQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ResizeNotFound` instead.
    class ResizeNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ResizeNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ResourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSInvalidTopic` instead.
    class SNSInvalidTopicFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SNSInvalidTopicFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSNoAuthorization` instead.
    class SNSNoAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SNSNoAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSTopicArnNotFound` instead.
    class SNSTopicArnNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScheduleDefinitionTypeUnsupported` instead.
    class ScheduleDefinitionTypeUnsupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ScheduleDefinitionTypeUnsupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScheduledActionAlreadyExists` instead.
    class ScheduledActionAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ScheduledActionAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScheduledActionNotFound` instead.
    class ScheduledActionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ScheduledActionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScheduledActionQuotaExceeded` instead.
    class ScheduledActionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ScheduledActionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `ScheduledActionTypeUnsupported` instead.
    class ScheduledActionTypeUnsupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::ScheduledActionTypeUnsupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyAlreadyDisabledFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyAlreadyDisabledFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyAlreadyEnabledFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyAlreadyEnabledFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyDisabledFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyDisabledFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyGrantAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyGrantAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyGrantNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyGrantNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SnapshotCopyGrantQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotCopyGrantQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotScheduleAlreadyExists` instead.
    class SnapshotScheduleAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotScheduleAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotScheduleNotFound` instead.
    class SnapshotScheduleNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotScheduleNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotScheduleQuotaExceeded` instead.
    class SnapshotScheduleQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotScheduleQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotScheduleUpdateInProgress` instead.
    class SnapshotScheduleUpdateInProgressFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SnapshotScheduleUpdateInProgressFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SourceNotFound` instead.
    class SourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetAlreadyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubnetAlreadyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionAlreadyExist` instead.
    class SubscriptionAlreadyExistFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionCategoryNotFound` instead.
    class SubscriptionCategoryNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionEventIdNotFound` instead.
    class SubscriptionEventIdNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubscriptionEventIdNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionNotFound` instead.
    class SubscriptionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubscriptionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionSeverityNotFound` instead.
    class SubscriptionSeverityNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::SubscriptionSeverityNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `TableLimitExceeded` instead.
    class TableLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::TableLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TableRestoreNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::TableRestoreNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TagLimitExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::TagLimitExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnauthorizedOperation < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UnauthorizedOperation] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UnauthorizedPartnerIntegration` instead.
    class UnauthorizedPartnerIntegrationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UnauthorizedPartnerIntegrationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnknownSnapshotCopyRegionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UnknownSnapshotCopyRegionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UnsupportedOperation` instead.
    class UnsupportedOperationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UnsupportedOperationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnsupportedOptionFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UnsupportedOptionFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UsageLimitAlreadyExists` instead.
    class UsageLimitAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UsageLimitAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `UsageLimitNotFound` instead.
    class UsageLimitNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Redshift::Types::UsageLimitNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
