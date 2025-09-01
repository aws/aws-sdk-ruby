# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHub
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MigrationHub::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MigrationHub::Errors::ServiceError
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
  # * {DryRunOperation}
  # * {HomeRegionNotSetException}
  # * {InternalServerError}
  # * {InvalidInputException}
  # * {PolicyErrorException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  # * {UnauthorizedOperation}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised to indicate a successfully authorized action when the
    #             <code>DryRun</code> flag is set to "true".</p>
    class DryRunOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::DryRunOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The home region is not set. Set the home region to continue.</p>
    class HomeRegionNotSetException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::HomeRegionNotSetException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised when an internal, configuration, or dependency error is
    #          encountered.</p>
    class InternalServerError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::InternalServerError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised when the provided input violates a policy constraint or is entered in
    #          the wrong format or data type.</p>
    class InvalidInputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::InvalidInputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised when there are problems accessing Application Discovery Service
    #          (Application Discovery Service); most likely due to a misconfigured policy or the
    #             <code>migrationhub-discovery</code> role is missing or not configured correctly.</p>
    class PolicyErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::PolicyErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised when the request references a resource (Application Discovery Service
    #          configuration, update stream, migration task, etc.) that does not exist in Application
    #          Discovery Service (Application Discovery Service) or in Migration Hub's repository.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Exception raised when there is an internal, configuration, or dependency error
    #          encountered.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>A message that provides information about the exception.</p>
      def message
        @data[:message]
      end

      # <p>The number of seconds the caller should wait before retrying.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>Exception raised to indicate a request was not authorized when the <code>DryRun</code>
    #          flag is set to "true".</p>
    class UnauthorizedOperation < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MigrationHub::Types::UnauthorizedOperation] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
