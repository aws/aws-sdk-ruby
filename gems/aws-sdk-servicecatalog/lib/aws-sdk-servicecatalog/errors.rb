# frozen_string_literal: true

# This is generated code!

module Aws::ServiceCatalog
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ServiceCatalog::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceCatalog::Errors::ServiceError
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
  # * {DuplicateResourceException}
  # * {InvalidParametersException}
  # * {InvalidStateException}
  # * {LimitExceededException}
  # * {OperationNotSupportedException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {TagOptionNotMigratedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified resource is a duplicate.</p>
    class DuplicateResourceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::DuplicateResourceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameters provided to the operation are not valid.</p>
    class InvalidParametersException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::InvalidParametersException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An attempt was made to modify a resource that is in a state that is not valid. 
    #          Check your resources to ensure that they are in valid states before retrying the operation.</p>
    class InvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::InvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The current limits of the service would have been exceeded by this operation. Decrease your
    #          resource use or increase your service limits and retry the operation.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The operation is not supported.</p>
    class OperationNotSupportedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::OperationNotSupportedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource that is currently in use. Ensure that the resource is not in use and retry the operation.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::ResourceInUseException] data
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
      # @param [Aws::ServiceCatalog::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>An operation requiring TagOptions failed because the TagOptions migration process has
    #          not been performed for this account. Use the Amazon Web Services Management Console to perform the migration
    #          process before retrying the operation.</p>
    class TagOptionNotMigratedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ServiceCatalog::Types::TagOptionNotMigratedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
