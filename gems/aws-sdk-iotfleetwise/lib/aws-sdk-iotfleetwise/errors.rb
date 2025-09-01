# frozen_string_literal: true

# This is generated code!

module Aws::IoTFleetWise
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IoTFleetWise::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IoTFleetWise::Errors::ServiceError
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
  # * {DecoderManifestValidationException}
  # * {InternalServerException}
  # * {InvalidNodeException}
  # * {InvalidSignalsException}
  # * {LimitExceededException}
  # * {ResourceNotFoundException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have sufficient permission to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request has conflicting operations. This can occur if you're trying to perform
    #             more than one operation on the same resource at the same time.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource on which there are conflicting operations.</p>
      def resource
        @data[:resource]
      end

      # <p>The type of resource on which there are conflicting operations..</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request couldn't be completed because it contains signal decoders with one or more
    #             validation errors.</p>
    class DecoderManifestValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::DecoderManifestValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The request couldn't be completed because of invalid signals in the request.</p>
      def invalid_signals
        @data[:invalid_signals]
      end

      # <p>The request couldn't be completed because of invalid network interfaces in the
      #             request.</p>
      def invalid_network_interfaces
        @data[:invalid_network_interfaces]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request couldn't be completed because the server temporarily failed.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to wait before retrying the command.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The specified node type doesn't match the expected node type for a node. You can
    #             specify the node type as branch, sensor, actuator, or attribute.</p>
    class InvalidNodeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::InvalidNodeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The specified node type isn't valid.</p>
      def invalid_nodes
        @data[:invalid_nodes]
      end

      # <p>The reason the node validation failed.</p>
      def reason
        @data[:reason]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request couldn't be completed because it contains signals that aren't
    #             valid.</p>
    class InvalidSignalsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::InvalidSignalsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The signals which caused the exception.</p>
      def invalid_signals
        @data[:invalid_signals]
      end
    end

    # <p>A service quota was exceeded. </p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that was exceeded.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that was exceeded.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The resource wasn't found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that wasn't found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of resource that wasn't found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request couldn't be completed due to throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The quota identifier of the applied throttling rules for this request.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the service that couldn't be completed due to throttling.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The number of seconds to wait before retrying the command.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTFleetWise::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason the input failed to satisfy the constraints specified by an Amazon Web Services
      #             service.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of fields that fail to satisfy the constraints specified by an Amazon Web Services
      #             service.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
