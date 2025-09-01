# frozen_string_literal: true

# This is generated code!

module Aws::BackupGateway
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::BackupGateway::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BackupGateway::Errors::ServiceError
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
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The operation cannot proceed because you have insufficient permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of why you have insufficient permissions.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation cannot proceed because it is not supported.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of why the operation is not supported.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation did not succeed because an internal error occurred. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of which internal error occured.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource that is required for the action wasn't found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of which resource wasn't found.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>TPS has been limited to protect against intentional or unintentional 
    #     high request volumes.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>Error: TPS has been limited to protect against intentional or unintentional 
      #       high request volumes.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation did not succeed because a validation error occurred.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BackupGateway::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A description of what caused the validation error.</p>
      def error_code
        @data[:error_code]
      end

      def message
        @data[:message]
      end
    end
  end
end
