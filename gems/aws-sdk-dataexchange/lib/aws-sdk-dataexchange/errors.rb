# frozen_string_literal: true

# This is generated code!

module Aws::DataExchange
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::DataExchange::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DataExchange::Errors::ServiceError
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
  # * {ServiceLimitExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access to the resource is denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Access to the resource is denied.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request couldn't be completed because it conflicted with the current state of the
    #          resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The request couldn't be completed because it conflicted with the current state of the
      #          resource.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the resource with the conflict.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource with the conflict.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An exception occurred with the service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message identifying the service exception that occurred.</p>
      def message
        @data[:message]
      end
    end

    # <p>The resource couldn't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The resource couldn't be found.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the resource that couldn't be found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that couldn't be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request has exceeded the quotas imposed by the service.</p>
    class ServiceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::ServiceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The name of the limit that was reached.</p>
      def limit_name
        @data[:limit_name]
      end

      # <p>The value of the exceeded limit.</p>
      def limit_value
        @data[:limit_value]
      end

      # <p>The request has exceeded the quotas imposed by the service.</p>
      def message
        @data[:message]
      end
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The limit on the number of requests per second was exceeded.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request was invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::DataExchange::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The message that informs you about what was invalid about the request.</p>
      def message
        @data[:message]
      end

      # <p>The unique identifier for the resource that couldn't be found.</p>
      def exception_cause
        @data[:exception_cause]
      end
    end
  end
end
