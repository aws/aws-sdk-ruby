# frozen_string_literal: true

# This is generated code!

module Aws::DatabaseMigrationService
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DatabaseMigrationService::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DatabaseMigrationService::Errors::ServiceError
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
  # * {AccessDeniedFault}
  # * {CollectorNotFoundFault}
  # * {FailedDependencyFault}
  # * {InsufficientResourceCapacityFault}
  # * {InvalidCertificateFault}
  # * {InvalidOperationFault}
  # * {InvalidResourceStateFault}
  # * {InvalidSubnet}
  # * {KMSAccessDeniedFault}
  # * {KMSDisabledFault}
  # * {KMSFault}
  # * {KMSInvalidStateFault}
  # * {KMSKeyNotAccessibleFault}
  # * {KMSNotFoundFault}
  # * {KMSThrottlingFault}
  # * {ReplicationSubnetGroupDoesNotCoverEnoughAZs}
  # * {ResourceAlreadyExistsFault}
  # * {ResourceNotFoundFault}
  # * {ResourceQuotaExceededFault}
  # * {S3AccessDeniedFault}
  # * {S3ResourceNotFoundFault}
  # * {SNSInvalidTopicFault}
  # * {SNSNoAuthorizationFault}
  # * {StorageQuotaExceededFault}
  # * {SubnetAlreadyInUse}
  # * {UpgradeDependencyFailureFault}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>DMS was denied access to the endpoint. Check that the 
    #             role is correctly configured.</p>
    class AccessDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::AccessDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified collector doesn't exist.</p>
    class CollectorNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::CollectorNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A dependency threw an exception.</p>
    class FailedDependencyFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::FailedDependencyFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There are not enough resources allocated to the database migration.</p>
    class InsufficientResourceCapacityFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::InsufficientResourceCapacityFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The certificate was not valid.</p>
    class InvalidCertificateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::InvalidCertificateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The action or operation requested isn't valid.</p>
    class InvalidOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::InvalidOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource is in a state that prevents it from being used for database migration.</p>
    class InvalidResourceStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::InvalidResourceStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The subnet provided isn't valid.</p>
    class InvalidSubnet < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::InvalidSubnet] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The ciphertext references a key that doesn't exist or that the DMS account doesn't have access to.</p>
    class KMSAccessDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSAccessDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified KMS key isn't enabled.</p>
    class KMSDisabledFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSDisabledFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An Key Management Service (KMS) error is preventing access to KMS.</p>
    class KMSFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The state of the specified KMS resource isn't valid for this request.</p>
    class KMSInvalidStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSInvalidStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>DMS cannot access the KMS key.</p>
    class KMSKeyNotAccessibleFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified KMS entity or resource can't be found.</p>
    class KMSNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This request triggered KMS request throttling.</p>
    class KMSThrottlingFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::KMSThrottlingFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The replication subnet group does not cover enough Availability Zones (AZs). Edit the replication subnet group and add more AZs.</p>
    class ReplicationSubnetGroupDoesNotCoverEnoughAZs < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::ReplicationSubnetGroupDoesNotCoverEnoughAZs] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The resource you are attempting to create already exists.</p>
    class ResourceAlreadyExistsFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::ResourceAlreadyExistsFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end

      # <p></p>
      def resource_arn
        @data[:resource_arn]
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::ResourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The quota for this resource quota has been exceeded.</p>
    class ResourceQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::ResourceQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Insufficient privileges are preventing access to an Amazon S3 object.</p>
    class S3AccessDeniedFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::S3AccessDeniedFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A specified Amazon S3 bucket, bucket folder, or other object can't be
    #             found.</p>
    class S3ResourceNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::S3ResourceNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The SNS topic is invalid.</p>
    class SNSInvalidTopicFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::SNSInvalidTopicFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>You are not authorized for the SNS subscription.</p>
    class SNSNoAuthorizationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::SNSNoAuthorizationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The storage quota has been exceeded.</p>
    class StorageQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::StorageQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The specified subnet is already in use.</p>
    class SubnetAlreadyInUse < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::SubnetAlreadyInUse] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>An upgrade dependency is preventing the database migration.</p>
    class UpgradeDependencyFailureFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DatabaseMigrationService::Types::UpgradeDependencyFailureFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end
  end
end
