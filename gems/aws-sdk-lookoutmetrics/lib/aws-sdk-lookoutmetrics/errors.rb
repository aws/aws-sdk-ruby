# frozen_string_literal: true

# This is generated code!

module Aws::LookoutMetrics
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::LookoutMetrics::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::LookoutMetrics::Errors::ServiceError
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
  # * {TooManyRequestsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient permissions to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There was a conflict processing the request. Try your request again.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request processing has failed because of an unknown error, exception, or failure.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource cannot be found. Check the ARN of the resource and try again.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request exceeded the service's quotas. Check the service quotas and try again.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The quota code.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied due to too many requests being submitted at the same time.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The input fails to satisfy the constraints specified by the AWS service. Check your input values and try
    #       again.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::LookoutMetrics::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason that validation failed.</p>
      def reason
        @data[:reason]
      end

      # <p>Fields that failed validation.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
