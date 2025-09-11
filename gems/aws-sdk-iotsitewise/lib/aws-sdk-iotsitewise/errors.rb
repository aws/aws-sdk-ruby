# frozen_string_literal: true

# This is generated code!

module Aws::IoTSiteWise
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::IoTSiteWise::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IoTSiteWise::Errors::ServiceError
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
  # * {ConflictingOperationException}
  # * {InternalFailureException}
  # * {InvalidRequestException}
  # * {LimitExceededException}
  # * {PreconditionFailedException}
  # * {QueryTimeoutException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  # * {ThrottlingException}
  # * {TooManyTagsException}
  # * {UnauthorizedException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access is denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    class ConflictingOperationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ConflictingOperationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that conflicts with this operation.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The ARN of the resource that conflicts with this operation.</p>
      def resource_arn
        @data[:resource_arn]
      end
    end

    # <p>IoT SiteWise can't process your request right now. Try again later.</p>
    class InternalFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::InternalFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters. Check your request and try again.</p>
    class InvalidRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::InvalidRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the quota for a resource. For example, this can occur if you're trying to
    #       associate more than the allowed number of child assets or attempting to create more than the
    #       allowed number of properties for an asset model.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    class LimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::LimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The precondition in one or more of the request-header fields evaluated to
    #         <code>FALSE</code>.</p>
    class PreconditionFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::PreconditionFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource on which precondition failed with this operation.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The ARN of the resource on which precondition failed with this operation.</p>
      def resource_arn
        @data[:resource_arn]
      end
    end

    # <p>The query timed out.</p>
    class QueryTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::QueryTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource already exists.</p>
    class ResourceAlreadyExistsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ResourceAlreadyExistsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that already exists.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The ARN of the resource that already exists.</p>
      def resource_arn
        @data[:resource_arn]
      end
    end

    # <p>The requested resource can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested service is unavailable.</p>
    class ServiceUnavailableException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ServiceUnavailableException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request exceeded a rate limit. For example, you might have exceeded the number of
    #       IoT SiteWise assets that can be created per second, the allowed number of messages per second, and so
    #       on.</p>
    #          <p>For more information, see <a href="https://docs.aws.amazon.com/iot-sitewise/latest/userguide/quotas.html">Quotas</a> in the <i>IoT SiteWise User Guide</i>.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>You've reached the quota for the number of tags allowed for a resource. For more
    #       information, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html#tag-conventions">Tag naming limits and
    #         requirements</a> in the <i>Amazon Web Services General Reference</i>.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The name of the resource with too many tags.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>You are not authorized.</p>
    class UnauthorizedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::UnauthorizedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The validation failed for this query.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::IoTSiteWise::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
