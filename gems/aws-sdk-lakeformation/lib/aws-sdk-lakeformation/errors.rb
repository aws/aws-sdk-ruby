# frozen_string_literal: true

# This is generated code!

module Aws::LakeFormation
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LakeFormation::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LakeFormation::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {EntityNotFoundException}
  # * {ExpiredException}
  # * {GlueEncryptionException}
  # * {InternalServiceException}
  # * {InvalidInputException}
  # * {OperationTimeoutException}
  # * {PermissionTypeMismatchException}
  # * {ResourceNotReadyException}
  # * {ResourceNumberLimitExceededException}
  # * {StatisticsNotReadyYetException}
  # * {ThrottledException}
  # * {TransactionCanceledException}
  # * {TransactionCommitInProgressException}
  # * {TransactionCommittedException}
  # * {WorkUnitsNotReadyYetException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to a resource was denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::AccessDeniedException] data
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
      # @param [Aws::LakeFormation::Types::AlreadyExistsException] data
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
      # @param [Aws::LakeFormation::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>A specified entity does not exist.</p>
    class EntityNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::EntityNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error where the query request expired.</p>
    class ExpiredException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::ExpiredException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>An encryption operation failed.</p>
    class GlueEncryptionException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::GlueEncryptionException] data
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
      # @param [Aws::LakeFormation::Types::InternalServiceException] data
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
      # @param [Aws::LakeFormation::Types::InvalidInputException] data
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
      # @param [Aws::LakeFormation::Types::OperationTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>The engine does not support filtering data based on the enforced permissions. For example, if you call the <code>GetTemporaryGlueTableCredentials</code> operation with <code>SupportedPermissionType</code> equal to <code>ColumnPermission</code>, but cell-level permissions exist on the table, this exception is thrown.</p>
    class PermissionTypeMismatchException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::PermissionTypeMismatchException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error related to a resource which is not ready for a transaction.</p>
    class ResourceNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::ResourceNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>A resource numerical limit was exceeded.</p>
    class ResourceNumberLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::ResourceNumberLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the problem.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error related to statistics not being ready.</p>
    class StatisticsNotReadyYetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::StatisticsNotReadyYetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error where the query request was throttled.</p>
    class ThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::ThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # <p>Contains details about an error related to a transaction that was cancelled.</p>
    class TransactionCanceledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::TransactionCanceledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error related to a transaction commit that was in progress.</p>
    class TransactionCommitInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::TransactionCommitInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error where the specified transaction has already been committed and cannot be used for <code>UpdateTableObjects</code>.</p>
    class TransactionCommittedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::TransactionCommittedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end

    # <p>Contains details about an error related to work units not being ready.</p>
    class WorkUnitsNotReadyYetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LakeFormation::Types::WorkUnitsNotReadyYetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message describing the error.</p>
      def message
        @data[:message]
      end
    end
  end
end
