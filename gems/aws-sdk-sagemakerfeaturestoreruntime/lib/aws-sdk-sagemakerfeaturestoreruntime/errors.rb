# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerFeatureStoreRuntime
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SageMakerFeatureStoreRuntime::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SageMakerFeatureStoreRuntime::Errors::ServiceError
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
  # * {AccessForbidden}
  # * {ConflictException}
  # * {InternalFailure}
  # * {ResourceNotFound}
  # * {ServiceUnavailable}
  # * {ValidationError}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have permission to perform an action.</p>
    class AccessForbidden < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::AccessForbidden] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service rejected the update because the provided <code>EventTime</code> is
    #          older than the record's current <code>EventTime</code>. To persist the update, retrieve
    #          the record's latest <code>EventTime</code> and resubmit the request with an
    #             <code>EventTime</code> that is equal to or newer than the current value.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An internal failure occurred. Try your request again. If the problem persists, contact
    #             Amazon Web Services customer support.</p>
    class InternalFailure < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::InternalFailure] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource that is required to perform an action was not found.</p>
    class ResourceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::ResourceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The service is currently unavailable.</p>
    class ServiceUnavailable < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::ServiceUnavailable] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was an error validating your request.</p>
    class ValidationError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SageMakerFeatureStoreRuntime::Types::ValidationError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
