# frozen_string_literal: true

# This is generated code!

module Aws::Codestarnotifications
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Codestarnotifications::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Codestarnotifications::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConfigurationException}
  # * {InvalidNextTokenException}
  # * {LimitExceededException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>CodeStar Notifications can't create the notification rule because you do not have sufficient
    #       permissions.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>CodeStar Notifications can't complete the request because the resource is being modified by
    #       another process. Wait a few minutes and try again.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Some or all of the configuration is incomplete, missing, or not valid.</p>
    class ConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::ConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The value for the enumeration token used in the request to return the next batch of the results is not valid. </p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One of the CodeStar Notifications limits has been exceeded. Limits apply to
    #             accounts, notification rules, notifications, resources, and targets. For more
    #             information, see Limits.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>A resource with the same name or ID already exists. Notification rule names must be
    #             unique in your Amazon Web Services account.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>CodeStar Notifications can't find a resource that matches the provided ARN. </p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>One or more parameter values are not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Codestarnotifications::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
