# frozen_string_literal: true

# This is generated code!

module Aws::CloudWatch
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CloudWatch::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatch::Errors::ServiceError
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
  # * {ConcurrentModificationException}
  # * {ConflictException}
  # * {DashboardInvalidInputError}
  # * {DashboardNotFoundError}
  # * {InternalServiceFault}
  # * {InvalidFormatFault}
  # * {InvalidNextToken}
  # * {InvalidParameterCombinationException}
  # * {InvalidParameterValueException}
  # * {LimitExceededException}
  # * {LimitExceededFault}
  # * {MissingRequiredParameterException}
  # * {ResourceNotFound}
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>More than one process tried to modify a resource at the same time.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>This operation attempted to create a resource that already exists.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Some part of the dashboard data is invalid.</p>
    class DashboardInvalidInputError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::DashboardInvalidInputError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def dashboard_validation_messages
        @data[:dashboard_validation_messages]
      end
    end

    # <p>The specified dashboard does not exist.</p>
    class DashboardNotFoundError < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::DashboardNotFoundError] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Request processing has failed due to some unknown error, exception, or
    #             failure.</p>
    class InternalServiceFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::InternalServiceFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Data was not syntactically valid JSON.</p>
    class InvalidFormatFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::InvalidFormatFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The next token specified is invalid.</p>
    class InvalidNextToken < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::InvalidNextToken] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>Parameters were used together that cannot be used together.</p>
    class InvalidParameterCombinationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::InvalidParameterCombinationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The value of an input parameter is bad or out-of-range.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The operation exceeded one or more limits.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The quota for alarms for this customer has already been reached.</p>
    class LimitExceededFault < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::LimitExceededFault] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>An input parameter that is required is missing.</p>
    class MissingRequiredParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::MissingRequiredParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The named resource does not exist.</p>
    class ResourceNotFound < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::ResourceNotFound] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p></p>
      def message
        @data[:message]
      end
    end

    # <p>The named resource does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CloudWatch::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def resource_type
        @data[:resource_type]
      end

      def resource_id
        @data[:resource_id]
      end

      def message
        @data[:message]
      end
    end
  end
end
