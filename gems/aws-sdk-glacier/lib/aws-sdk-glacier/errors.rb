# frozen_string_literal: true

# This is generated code!

module Aws::Glacier
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Glacier::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Glacier::Errors::ServiceError
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
  # * {InsufficientCapacityException}
  # * {InvalidParameterValueException}
  # * {LimitExceededException}
  # * {MissingParameterValueException}
  # * {PolicyEnforcedException}
  # * {RequestTimeoutException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Returned if there is insufficient capacity to process this expedited request. This
    #          error only applies to expedited retrievals and not to standard or bulk
    #          retrievals.</p>
    class InsufficientCapacityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::InsufficientCapacityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def code
        @data[:code]
      end

      def message
        @data[:message]
      end
    end

    # <p>Returned if a parameter of the request is incorrectly specified.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client</p>
      def type
        @data[:type]
      end

      # <p>400 Bad Request</p>
      def code
        @data[:code]
      end

      # <p>Returned if a parameter of the request is incorrectly specified.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if the request results in a vault or account limit being exceeded.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client</p>
      def type
        @data[:type]
      end

      # <p>400 Bad Request</p>
      def code
        @data[:code]
      end

      # <p>Returned if the request results in a vault limit or tags limit being exceeded.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if a required header or parameter is missing from the request.</p>
    class MissingParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::MissingParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client.</p>
      def type
        @data[:type]
      end

      # <p>400 Bad Request</p>
      def code
        @data[:code]
      end

      # <p>Returned if no authentication data is found for the request.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if a retrieval job would exceed the current data policy's retrieval rate
    #          limit. For more information about data retrieval policies,</p>
    class PolicyEnforcedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::PolicyEnforcedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client</p>
      def type
        @data[:type]
      end

      # <p>PolicyEnforcedException</p>
      def code
        @data[:code]
      end

      # <p>InitiateJob request denied by current data retrieval policy.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the
    #          upload.</p>
    class RequestTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::RequestTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client</p>
      def type
        @data[:type]
      end

      # <p>408 Request Timeout</p>
      def code
        @data[:code]
      end

      # <p>Returned if, when uploading an archive, Amazon S3 Glacier times out while receiving the
      #          upload.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't
    #          exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Client</p>
      def type
        @data[:type]
      end

      # <p>404 Not Found</p>
      def code
        @data[:code]
      end

      # <p>Returned if the specified resource (such as a vault, upload ID, or job ID) doesn't
      #          exist.</p>
      def message
        @data[:message]
      end
    end

    # <p>Returned if the service cannot complete the request.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Glacier::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Server</p>
      def type
        @data[:type]
      end

      # <p>500 Internal Server Error</p>
      def code
        @data[:code]
      end

      # <p>Returned if the service cannot complete the request.</p>
      def message
        @data[:message]
      end
    end
  end
end
