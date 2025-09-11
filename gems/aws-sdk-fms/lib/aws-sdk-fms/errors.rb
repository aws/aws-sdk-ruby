# frozen_string_literal: true

# This is generated code!

module Aws::FMS
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::FMS::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::FMS::Errors::ServiceError
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
  # * {InternalErrorException}
  # * {InvalidInputException}
  # * {InvalidOperationException}
  # * {InvalidTypeException}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The operation failed because of a system problem, even though the request was valid. Retry
    #       your request.</p>
    class InternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::InternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameters of the request were invalid.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation failed because there was nothing to do or the operation wasn't possible. For example, you might have
    #         submitted an <code>AssociateAdminAccount</code> request for an account ID that
    #             was already set as the Firewall Manager administrator. Or you might have tried to access a Region
    #   that's disabled by default, and that you need to enable for the Firewall Manager
    #   administrator account and for Organizations before you can access it.</p>
    class InvalidOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::InvalidOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value of the <code>Type</code> parameter is invalid.</p>
    class InvalidTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::InvalidTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation exceeds a resource limit, for example, the maximum number of
    #         <code>policy</code> objects that you can create for an Amazon Web Services account. For more information,
    #       see <a href="https://docs.aws.amazon.com/waf/latest/developerguide/fms-limits.html">Firewall
    #         Manager Limits</a> in the <i>WAF Developer Guide</i>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::FMS::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
