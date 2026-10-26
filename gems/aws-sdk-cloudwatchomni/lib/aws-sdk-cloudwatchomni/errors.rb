# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatchOmni
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudWatchOmni::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatchOmni::Errors::ServiceError
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
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # The caller is not authorized to perform this action.
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The operation could not be completed because of a conflict with the current
    # state of the resource.
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # A human-readable description of the conflict.
      def message
        @data[:message]
      end

      # The type of conflict that caused the request to fail. Not always present.
      def conflict_type
        @data[:conflict_type]
      end

      # The identifier of the resource that is in conflict. Not always present.
      def resource_id
        @data[:resource_id]
      end

      # The type of the resource that is in conflict. Not always present.
      def resource_type
        @data[:resource_type]
      end

      # The error code associated with the conflict. Not always present.
      def error_code
        @data[:error_code]
      end
    end

    # An unexpected error occurred while processing the request.
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The error code associated with the internal error.
      def error_code
        @data[:error_code]
      end

      def retryable?
        true
      end
    end

    # The specified resource does not exist.
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The type of the resource that could not be found. Not always present.
      def resource_type
        @data[:resource_type]
      end

      # The identifier of the resource that could not be found. Not always present.
      def resource_id
        @data[:resource_id]
      end

      # The error code associated with the failure.
      def error_code
        @data[:error_code]
      end
    end

    # A service quota was exceeded.
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # The request was throttled due to exceeding the allowed request rate.
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The number of seconds to wait before retrying the request. Not always
      # present.
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end

    # A parameter is specified incorrectly.
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatchOmni::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # The error code associated with the validation failure.
      def error_code
        @data[:error_code]
      end
    end
  end
end
