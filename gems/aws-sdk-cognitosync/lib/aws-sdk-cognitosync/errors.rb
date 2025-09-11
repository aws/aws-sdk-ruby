# frozen_string_literal: true

# This is generated code!

module Aws::CognitoSync
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::CognitoSync::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CognitoSync::Errors::ServiceError
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
  # * {AlreadyStreamedException}
  # * {ConcurrentModificationException}
  # * {DuplicateRequestException}
  # * {InternalErrorException}
  # * {InvalidConfigurationException}
  # * {InvalidLambdaFunctionOutputException}
  # * {InvalidParameterException}
  # * {LambdaThrottledException}
  # * {LimitExceededException}
  # * {NotAuthorizedException}
  # * {ResourceConflictException}
  # * {ResourceNotFoundException}
  # * {TooManyRequestsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.
    class AlreadyStreamedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::AlreadyStreamedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # The message associated with the AlreadyStreamedException exception.
      def message
        @data[:message]
      end
    end

    # <p>Thrown if there are parallel requests to modify a resource.</p>
    class ConcurrentModificationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::ConcurrentModificationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>The message returned by a ConcurrentModicationException.</p>
      def message
        @data[:message]
      end
    end

    # An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.
    class DuplicateRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::DuplicateRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # The message associated with the DuplicateRequestException exception.
      def message
        @data[:message]
      end
    end

    # Indicates an internal service
    #       error.
    class InternalErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::InternalErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by
      #       InternalErrorException.
      def message
        @data[:message]
      end
    end

    # Error class for InvalidConfigurationException.
    class InvalidConfigurationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::InvalidConfigurationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by
      #       InvalidConfigurationException.
      def message
        @data[:message]
      end
    end

    # <p>The AWS Lambda function returned invalid output or an exception.</p>
    class InvalidLambdaFunctionOutputException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::InvalidLambdaFunctionOutputException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message returned when an InvalidLambdaFunctionOutputException occurs</p>
      def message
        @data[:message]
      end
    end

    # Thrown when a request parameter does not comply
    #       with the associated constraints.
    class InvalidParameterException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::InvalidParameterException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by
      #       InvalidParameterException.
      def message
        @data[:message]
      end
    end

    # <p>AWS Lambda throttled your account, please contact AWS Support</p>
    class LambdaThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::LambdaThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # <p>A message returned when an LambdaThrottledException is thrown</p>
      def message
        @data[:message]
      end
    end

    # Thrown when the limit on the number of objects or
    #       operations has been exceeded.
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by
      #       LimitExceededException.
      def message
        @data[:message]
      end
    end

    # Thrown when a user is not authorized to access the
    #       requested resource.
    class NotAuthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::NotAuthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # The message returned by a
      #       NotAuthorizedException.
      def message
        @data[:message]
      end
    end

    # Thrown if an update can't be applied because
    #       the resource was changed by another call and this would result in a conflict.
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # The message returned by a
      #       ResourceConflictException.
      def message
        @data[:message]
      end
    end

    # Thrown if the resource doesn't
    #       exist.
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by a
      #       ResourceNotFoundException.
      def message
        @data[:message]
      end
    end

    # Thrown if the request is
    #       throttled.
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::CognitoSync::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Message returned by a
      #       TooManyRequestsException.
      def message
        @data[:message]
      end
    end
  end
end
