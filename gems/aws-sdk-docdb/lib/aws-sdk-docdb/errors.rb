# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DocDB

  # When DocDB returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::DocDB::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all DocDB errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DocDB::Errors::ServiceError
  #       # rescues all DocDB API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AuthorizationNotFoundFault}
  #    * This error class is not used. `AuthorizationNotFound` is used during parsing instead.
  # * {CertificateNotFoundFault}
  #    * This error class is not used. `CertificateNotFound` is used during parsing instead.
  # * {DBClusterAlreadyExistsFault}
  # * {DBClusterNotFoundFault}
  # * {DBClusterParameterGroupNotFoundFault}
  #    * This error class is not used. `DBClusterParameterGroupNotFound` is used during parsing instead.
  # * {DBClusterQuotaExceededFault}
  # * {DBClusterSnapshotAlreadyExistsFault}
  # * {DBClusterSnapshotNotFoundFault}
  # * {DBInstanceAlreadyExistsFault}
  #    * This error class is not used. `DBInstanceAlreadyExists` is used during parsing instead.
  # * {DBInstanceNotFoundFault}
  #    * This error class is not used. `DBInstanceNotFound` is used during parsing instead.
  # * {DBParameterGroupAlreadyExistsFault}
  #    * This error class is not used. `DBParameterGroupAlreadyExists` is used during parsing instead.
  # * {DBParameterGroupNotFoundFault}
  #    * This error class is not used. `DBParameterGroupNotFound` is used during parsing instead.
  # * {DBParameterGroupQuotaExceededFault}
  #    * This error class is not used. `DBParameterGroupQuotaExceeded` is used during parsing instead.
  # * {DBSecurityGroupNotFoundFault}
  #    * This error class is not used. `DBSecurityGroupNotFound` is used during parsing instead.
  # * {DBSnapshotAlreadyExistsFault}
  #    * This error class is not used. `DBSnapshotAlreadyExists` is used during parsing instead.
  # * {DBSnapshotNotFoundFault}
  #    * This error class is not used. `DBSnapshotNotFound` is used during parsing instead.
  # * {DBSubnetGroupAlreadyExistsFault}
  #    * This error class is not used. `DBSubnetGroupAlreadyExists` is used during parsing instead.
  # * {DBSubnetGroupDoesNotCoverEnoughAZs}
  # * {DBSubnetGroupNotFoundFault}
  # * {DBSubnetGroupQuotaExceededFault}
  #    * This error class is not used. `DBSubnetGroupQuotaExceeded` is used during parsing instead.
  # * {DBSubnetQuotaExceededFault}
  # * {DBUpgradeDependencyFailureFault}
  #    * This error class is not used. `DBUpgradeDependencyFailure` is used during parsing instead.
  # * {EventSubscriptionQuotaExceededFault}
  #    * This error class is not used. `EventSubscriptionQuotaExceeded` is used during parsing instead.
  # * {GlobalClusterAlreadyExistsFault}
  # * {GlobalClusterNotFoundFault}
  # * {GlobalClusterQuotaExceededFault}
  # * {InstanceQuotaExceededFault}
  #    * This error class is not used. `InstanceQuotaExceeded` is used during parsing instead.
  # * {InsufficientDBClusterCapacityFault}
  # * {InsufficientDBInstanceCapacityFault}
  #    * This error class is not used. `InsufficientDBInstanceCapacity` is used during parsing instead.
  # * {InsufficientStorageClusterCapacityFault}
  #    * This error class is not used. `InsufficientStorageClusterCapacity` is used during parsing instead.
  # * {InvalidDBClusterSnapshotStateFault}
  # * {InvalidDBClusterStateFault}
  # * {InvalidDBInstanceStateFault}
  #    * This error class is not used. `InvalidDBInstanceState` is used during parsing instead.
  # * {InvalidDBParameterGroupStateFault}
  #    * This error class is not used. `InvalidDBParameterGroupState` is used during parsing instead.
  # * {InvalidDBSecurityGroupStateFault}
  #    * This error class is not used. `InvalidDBSecurityGroupState` is used during parsing instead.
  # * {InvalidDBSnapshotStateFault}
  #    * This error class is not used. `InvalidDBSnapshotState` is used during parsing instead.
  # * {InvalidDBSubnetGroupStateFault}
  # * {InvalidDBSubnetStateFault}
  # * {InvalidEventSubscriptionStateFault}
  #    * This error class is not used. `InvalidEventSubscriptionState` is used during parsing instead.
  # * {InvalidGlobalClusterStateFault}
  # * {InvalidRestoreFault}
  # * {InvalidSubnet}
  # * {InvalidVPCNetworkStateFault}
  # * {KMSKeyNotAccessibleFault}
  # * {NetworkTypeNotSupported}
  # * {ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  #    * This error class is not used. `SNSInvalidTopic` is used during parsing instead.
  # * {SNSNoAuthorizationFault}
  #    * This error class is not used. `SNSNoAuthorization` is used during parsing instead.
  # * {SNSTopicArnNotFoundFault}
  #    * This error class is not used. `SNSTopicArnNotFound` is used during parsing instead.
  # * {SharedSnapshotQuotaExceededFault}
  #    * This error class is not used. `SharedSnapshotQuotaExceeded` is used during parsing instead.
  # * {SnapshotQuotaExceededFault}
  #    * This error class is not used. `SnapshotQuotaExceeded` is used during parsing instead.
  # * {SourceNotFoundFault}
  #    * This error class is not used. `SourceNotFound` is used during parsing instead.
  # * {StorageQuotaExceededFault}
  #    * This error class is not used. `StorageQuotaExceeded` is used during parsing instead.
  # * {StorageTypeNotSupportedFault}
  #    * This error class is not used. `StorageTypeNotSupported` is used during parsing instead.
  # * {SubnetAlreadyInUse}
  # * {SubscriptionAlreadyExistFault}
  #    * This error class is not used. `SubscriptionAlreadyExist` is used during parsing instead.
  # * {SubscriptionCategoryNotFoundFault}
  #    * This error class is not used. `SubscriptionCategoryNotFound` is used during parsing instead.
  # * {SubscriptionNotFoundFault}
  #    * This error class is not used. `SubscriptionNotFound` is used during parsing instead.
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    # @deprecated This error class is not used during parsing.
    #   Please use `AuthorizationNotFound` instead.
    class AuthorizationNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::AuthorizationNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `CertificateNotFound` instead.
    class CertificateNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::CertificateNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBClusterParameterGroupNotFound` instead.
    class DBClusterParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBClusterSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBClusterSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceAlreadyExists` instead.
    class DBInstanceAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBInstanceAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBInstanceNotFound` instead.
    class DBInstanceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBInstanceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupAlreadyExists` instead.
    class DBParameterGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBParameterGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupNotFound` instead.
    class DBParameterGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBParameterGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBParameterGroupQuotaExceeded` instead.
    class DBParameterGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBParameterGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSecurityGroupNotFound` instead.
    class DBSecurityGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSecurityGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSnapshotAlreadyExists` instead.
    class DBSnapshotAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSnapshotAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSnapshotNotFound` instead.
    class DBSnapshotNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSnapshotNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSubnetGroupAlreadyExists` instead.
    class DBSubnetGroupAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSubnetGroupAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupDoesNotCoverEnoughAZs < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetGroupNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSubnetGroupNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBSubnetGroupQuotaExceeded` instead.
    class DBSubnetGroupQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSubnetGroupQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class DBSubnetQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBSubnetQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `DBUpgradeDependencyFailure` instead.
    class DBUpgradeDependencyFailureFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::DBUpgradeDependencyFailureFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `EventSubscriptionQuotaExceeded` instead.
    class EventSubscriptionQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::EventSubscriptionQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterAlreadyExistsFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::GlobalClusterAlreadyExistsFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::GlobalClusterNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class GlobalClusterQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::GlobalClusterQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InstanceQuotaExceeded` instead.
    class InstanceQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InstanceQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InsufficientDBClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InsufficientDBClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientDBInstanceCapacity` instead.
    class InsufficientDBInstanceCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InsufficientDBInstanceCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InsufficientStorageClusterCapacity` instead.
    class InsufficientStorageClusterCapacityFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InsufficientStorageClusterCapacityFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBClusterSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBInstanceState` instead.
    class InvalidDBInstanceStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBInstanceStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBParameterGroupState` instead.
    class InvalidDBParameterGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBParameterGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBSecurityGroupState` instead.
    class InvalidDBSecurityGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBSecurityGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidDBSnapshotState` instead.
    class InvalidDBSnapshotStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBSnapshotStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetGroupStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBSubnetGroupStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidDBSubnetStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidDBSubnetStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `InvalidEventSubscriptionState` instead.
    class InvalidEventSubscriptionStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidEventSubscriptionStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidGlobalClusterStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidGlobalClusterStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidRestoreFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidRestoreFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSubnet < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidSubnet] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidVPCNetworkStateFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::InvalidVPCNetworkStateFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class KMSKeyNotAccessibleFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class NetworkTypeNotSupported < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::NetworkTypeNotSupported] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::ResourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSInvalidTopic` instead.
    class SNSInvalidTopicFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SNSInvalidTopicFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSNoAuthorization` instead.
    class SNSNoAuthorizationFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SNSNoAuthorizationFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SNSTopicArnNotFound` instead.
    class SNSTopicArnNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SNSTopicArnNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SharedSnapshotQuotaExceeded` instead.
    class SharedSnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SharedSnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SnapshotQuotaExceeded` instead.
    class SnapshotQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SnapshotQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SourceNotFound` instead.
    class SourceNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SourceNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `StorageQuotaExceeded` instead.
    class StorageQuotaExceededFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::StorageQuotaExceededFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `StorageTypeNotSupported` instead.
    class StorageTypeNotSupportedFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::StorageTypeNotSupportedFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class SubnetAlreadyInUse < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SubnetAlreadyInUse] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionAlreadyExist` instead.
    class SubscriptionAlreadyExistFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SubscriptionAlreadyExistFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionCategoryNotFound` instead.
    class SubscriptionCategoryNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SubscriptionCategoryNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    # @deprecated This error class is not used during parsing.
    #   Please use `SubscriptionNotFound` instead.
    class SubscriptionNotFoundFault < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DocDB::Types::SubscriptionNotFoundFault] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
