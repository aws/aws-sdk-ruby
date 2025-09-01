# frozen_string_literal: true

# This is generated code!

module Aws::QLDB
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::QLDB::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::QLDB::Errors::ServiceError
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
  # * {InvalidParameterException}
  # * {LimitExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ResourcePreconditionNotMetException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>One or more parameters in the request aren't valid.</p>
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the invalid parameter.</p>
      def parameter_name
        @data[:parameter_name]
      end
    end

    # <p>You have reached the limit on the maximum number of resources allowed.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The specified resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The specified resource can't be modified at this time.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The specified resource doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The operation failed because a condition wasn't satisfied in advance.</p>
    class ResourcePreconditionNotMetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::QLDB::Types::ResourcePreconditionNotMetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The type of resource.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The name of the resource.</p>
      def resource_name
        @data[:resource_name]
      end
    end
  end
end
