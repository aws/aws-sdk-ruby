# frozen_string_literal: true

# This is generated code!

module Aws::OpsWorksCM
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::OpsWorksCM::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::OpsWorksCM::Errors::ServiceError
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
  # * {InvalidNextTokenException}
  # * {InvalidStateException}
  # * {LimitExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>This occurs when the provided nextToken is not valid.
    #     </p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message that can contain more detail about a nextToken failure.
      #     </p>
      def message
        @data[:message]
      end
    end

    # <p>The resource is in a state that does not allow you to perform a specified action.
    #     </p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message that provides more detail if a resource is
      #       in a state that is not valid for performing a specified action.
      #     </p>
      def message
        @data[:message]
      end
    end

    # <p>The limit of servers or backups has been reached.
    #     </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message that the maximum allowed number of servers or backups has been exceeded.
      #     </p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource cannot be created because it already exists.
    #     </p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message in response to a CreateServer request that a resource cannot be created because it already exists.
      #     </p>
      def message
        @data[:message]
      end
    end

    # <p>The requested resource does not exist, or access was denied.
    #     </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message that can contain more detail about problems locating or accessing a resource.
      #     </p>
      def message
        @data[:message]
      end
    end

    # <p>One or more of the provided request parameters are not valid.
    #     </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::OpsWorksCM::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>Error or informational message that can contain more detail about a validation failure.
      #     </p>
      def message
        @data[:message]
      end
    end
  end
end
