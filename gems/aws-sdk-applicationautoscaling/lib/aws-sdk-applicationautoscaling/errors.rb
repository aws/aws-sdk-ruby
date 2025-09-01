# frozen_string_literal: true

# This is generated code!

module Aws::ApplicationAutoScaling
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::ApplicationAutoScaling::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApplicationAutoScaling::Errors::ServiceError
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
  # * {ConcurrentUpdateException}
  # * {FailedResourceAccessException}
  # * {InternalServiceException}
  # * {InvalidNextTokenException}
  # * {LimitExceededException}
  # * {ObjectNotFoundException}
  # * {ResourceNotFoundException}
  # * {TooManyTagsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Concurrent updates caused an exception, for example, if you request an update to an
    #          Application Auto Scaling resource that already has a pending update.</p>
    class ConcurrentUpdateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::ConcurrentUpdateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Failed access to resources caused an exception. This exception is thrown when Application Auto Scaling
    #          is unable to retrieve the alarms associated with a scaling policy due to a client error,
    #          for example, if the role ARN specified for a scalable target does not have permission to
    #          call the CloudWatch <a href="https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html">DescribeAlarms</a> on your behalf.</p>
    class FailedResourceAccessException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::FailedResourceAccessException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The service encountered an internal error.</p>
    class InternalServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::InternalServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The next token supplied was invalid.</p>
    class InvalidNextTokenException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::InvalidNextTokenException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>A per-account resource limit is exceeded. For more information, see <a href="https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html">Application Auto Scaling service quotas</a>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified object could not be found. For any operation that depends on the existence
    #          of a scalable target, this exception is thrown if the scalable target with the specified
    #          service namespace, resource ID, and scalable dimension does not exist. For any operation
    #          that deletes or deregisters a resource, this exception is thrown if the resource cannot be
    #          found.</p>
    class ObjectNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::ObjectNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified resource doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the Application Auto Scaling resource. This value is an Amazon Resource Name (ARN).</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>The request contains too many tags. Try the request again with fewer tags.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the Application Auto Scaling resource. This value is an Amazon Resource Name (ARN).</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>An exception was thrown for a validation issue. Review the available parameters for the
    #          API request.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::ApplicationAutoScaling::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end
  end
end
