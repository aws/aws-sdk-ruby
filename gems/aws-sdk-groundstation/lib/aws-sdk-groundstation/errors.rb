# frozen_string_literal: true

# This is generated code!

module Aws::GroundStation
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::GroundStation::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GroundStation::Errors::ServiceError
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
  # * {DependencyException}
  # * {InvalidParameterException}
  # * {ResourceInUseException}
  # * {ResourceLimitExceededException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Dependency encountered an error.</p>
    class DependencyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::DependencyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Name of the parameter that caused the exception.</p>
      def parameter_name
        @data[:parameter_name]
      end
    end

    # <p>One or more parameters are not valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Name of the invalid parameter.</p>
      def parameter_name
        @data[:parameter_name]
      end
    end

    # <p>The specified resource is in use by non-terminal state contacts and cannot be modified or deleted.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Account limits for this resource have been exceeded.</p>
    class ResourceLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::ResourceLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Name of the parameter that exceeded the resource limit.</p>
      def parameter_name
        @data[:parameter_name]
      end
    end

    # <p>Resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request would cause a service quota to be exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GroundStation::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Parameter name that caused the exception</p>
      def parameter_name
        @data[:parameter_name]
      end
    end
  end
end
