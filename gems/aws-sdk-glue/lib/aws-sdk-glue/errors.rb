# frozen_string_literal: true

# This is generated code!

module Aws::Glue
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Glue::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Glue::Errors::ServiceError
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
  # * {AccessDeniedException}
  # * {AlreadyExistsException}
  # * {ColumnStatisticsTaskNotRunningException}
  # * {ColumnStatisticsTaskRunningException}
  # * {ColumnStatisticsTaskStoppingException}
  # * {ConcurrentModificationException}
  # * {ConcurrentRunsExceededException}
  # * {ConditionCheckFailureException}
  # * {ConflictException}
  # * {CrawlerNotRunningException}
  # * {CrawlerRunningException}
  # * {CrawlerStoppingException}
  # * {EntityNotFoundException}
  # * {FederatedResourceAlreadyExistsException}
  # * {FederationSourceException}
  # * {FederationSourceRetryableException}
  # * {GlueEncryptionException}
  # * {IdempotentParameterMismatchException}
  # * {IllegalBlueprintStateException}
  # * {IllegalSessionStateException}
  # * {IllegalWorkflowStateException}
  # * {IntegrationConflictOperationFault}
  # * {IntegrationNotFoundFault}
  # * {IntegrationQuotaExceededFault}
  # * {InternalServerException}
  # * {InternalServiceException}
  # * {InvalidInputException}
  # * {InvalidIntegrationStateFault}
  # * {InvalidStateException}
  # * {KMSKeyNotAccessibleFault}
  # * {MLTransformNotReadyException}
  # * {NoScheduleException}
  # * {OperationNotSupportedException}
  # * {OperationTimeoutException}
  # * {PermissionTypeMismatchException}
  # * {ResourceNotFoundException}
  # * {ResourceNotReadyException}
  # * {ResourceNumberLimitExceededException}
  # * {SchedulerNotRunningException}
  # * {SchedulerRunningException}
  # * {SchedulerTransitioningException}
  # * {TargetResourceNotFound}
  # * {ThrottlingException}
  # * {ValidationException}
  # * {VersionMismatchException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to a resource was denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource to be created or added already exists.</p>
    class AlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::AlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception thrown when you try to stop a task run when there is no task running.</p>
    class ColumnStatisticsTaskNotRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ColumnStatisticsTaskNotRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception thrown when you try to start another job while running a column stats generation job.</p>
    class ColumnStatisticsTaskRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ColumnStatisticsTaskRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An exception thrown when you try to stop a task run.</p>
    class ColumnStatisticsTaskStoppingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ColumnStatisticsTaskStoppingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Two processes are trying to modify a resource simultaneously.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Too many jobs are being run concurrently.</p>
    class ConcurrentRunsExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ConcurrentRunsExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A specified condition was not satisfied.</p>
    class ConditionCheckFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ConditionCheckFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The <code>CreatePartitions</code> API was called on a table that has indexes enabled.	</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified crawler is not running.</p>
    class CrawlerNotRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::CrawlerNotRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation cannot be performed because the crawler is already running.</p>
    class CrawlerRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::CrawlerRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified crawler is stopping.</p>
    class CrawlerStoppingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::CrawlerStoppingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A specified entity does not exist</p>
    class EntityNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::EntityNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end

      # <p>Indicates whether or not the exception relates to a federated source.</p>
      def from_federation_source
        @data[:from_federation_source]
      end
    end

    # <p>A federated resource already exists.</p>
    class FederatedResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::FederatedResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing the problem.</p>
      def message
        @data[:message]
      end

      # <p>The associated Glue resource already exists.</p>
      def associated_glue_resource
        @data[:associated_glue_resource]
      end
    end

    # <p>A federation source failed.</p>
    class FederationSourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::FederationSourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The error code of the problem.</p>
      def federation_source_error_code
        @data[:federation_source_error_code]
      end

      # <p>The message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A federation source failed, but the operation may be retried.</p>
    class FederationSourceRetryableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::FederationSourceRetryableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An encryption operation failed.</p>
    class GlueEncryptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::GlueEncryptionException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The same unique identifier was associated with two different records.</p>
    class IdempotentParameterMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IdempotentParameterMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The blueprint is in an invalid state to perform a requested operation.</p>
    class IllegalBlueprintStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IllegalBlueprintStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The session is in an invalid state to perform a requested operation.</p>
    class IllegalSessionStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IllegalSessionStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The workflow is in an invalid state to perform a requested operation.</p>
    class IllegalWorkflowStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IllegalWorkflowStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The requested operation conflicts with another operation.</p>
    class IntegrationConflictOperationFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IntegrationConflictOperationFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified integration could not be found.</p>
    class IntegrationNotFoundFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IntegrationNotFoundFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The data processed through your integration exceeded your quota.</p>
    class IntegrationQuotaExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::IntegrationQuotaExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An internal server error occurred.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An internal service error occurred.</p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The input provided was not valid.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end

      # <p>Indicates whether or not the exception relates to a federated source.</p>
      def from_federation_source
        @data[:from_federation_source]
      end
    end

    # <p>The integration is in an invalid state.</p>
    class InvalidIntegrationStateFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::InvalidIntegrationStateFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>An error that indicates your data is in an invalid state.</p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The KMS key specified is not accessible.</p>
    class KMSKeyNotAccessibleFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::KMSKeyNotAccessibleFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The machine learning transform is not ready to run.</p>
    class MLTransformNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::MLTransformNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>There is no applicable schedule.</p>
    class NoScheduleException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::NoScheduleException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation is not available in the region.</p>
    class OperationNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::OperationNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation timed out.</p>
    class OperationTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::OperationTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation timed out.</p>
    class PermissionTypeMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::PermissionTypeMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>There is a mismatch between the SupportedPermissionType used in the query request
      #           and the permissions defined on the target table.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource was not ready for a transaction.</p>
    class ResourceNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ResourceNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource numerical limit was exceeded.</p>
    class ResourceNumberLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ResourceNumberLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified scheduler is not running.</p>
    class SchedulerNotRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::SchedulerNotRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified scheduler is already running.</p>
    class SchedulerRunningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::SchedulerRunningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified scheduler is transitioning.</p>
    class SchedulerTransitioningException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::SchedulerTransitioningException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The target resource could not be found.</p>
    class TargetResourceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::TargetResourceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The throttling threshhold was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A value could not be validated.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>There was a version conflict.</p>
    class VersionMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glue::Types::VersionMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end
  end
end
