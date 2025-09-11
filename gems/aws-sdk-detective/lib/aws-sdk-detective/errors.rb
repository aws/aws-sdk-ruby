# frozen_string_literal: true

# This is generated code!

module Aws::Detective
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Detective::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Detective::Errors::ServiceError
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

    # <p>The request issuer does not have permission to access this resource or perform this
    #          operation.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The SDK default error code associated with the access denied exception.</p>
      def error_code
        @data[:error_code]
      end

      # <p>The SDK default explanation of why access was denied.</p>
      def error_code_reason
        @data[:error_code_reason]
      end

      # <p>The error code associated with the access denied exception.</p>
      def sub_error_code
        @data[:sub_error_code]
      end

      # <p> An explanation of why access was denied.</p>
      def sub_error_code_reason
        @data[:sub_error_code_reason]
      end
    end

    # <p>The request attempted an invalid action.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was valid but failed because of a problem with the service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request refers to a nonexistent resource.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This request cannot be completed for one of the following reasons.</p>
    #          <ul>
    #             <li>
    #                <p>This request cannot be completed if it would cause the number of member accounts in the
    #             behavior graph to exceed the maximum allowed. A behavior graph cannot have more than 1,200
    #             member accounts.</p>
    #             </li>
    #             <li>
    #                <p>This request cannot be completed if the current volume ingested is above the limit of 10 TB per day. Detective will not allow you to add additional member accounts.</p>
    #             </li>
    #          </ul>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The type of resource that has exceeded the service quota.</p>
      def resources
        @data[:resources]
      end
    end

    # <p>The request cannot be completed because too many other requests are occurring at the
    #          same time.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request parameters are invalid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Detective::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The error code associated with the validation failure.</p>
      def error_code
        @data[:error_code]
      end

      # <p> An explanation of why validation failed.</p>
      def error_code_reason
        @data[:error_code_reason]
      end
    end
  end
end
