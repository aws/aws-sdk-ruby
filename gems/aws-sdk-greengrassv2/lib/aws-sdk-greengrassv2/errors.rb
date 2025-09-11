# frozen_string_literal: true

# This is generated code!

module Aws::GreengrassV2
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::GreengrassV2::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::GreengrassV2::Errors::ServiceError
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
  # * {RequestAlreadyInProgressException}
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You don't have permission to perform the action.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>Your request has conflicting operations. This can occur if you're trying to perform more
    #       than one operation on the same resource at the same time.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that conflicts with the request.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that conflicts with the request.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>IoT Greengrass can't process your request right now. Try again later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The amount of time to wait before you retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The request is already in progress. This exception occurs when you use a client token for
    #       multiple requests while IoT Greengrass is still processing an earlier request that uses the same client
    #       token.</p>
    class RequestAlreadyInProgressException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::RequestAlreadyInProgressException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested resource can't be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that isn't found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that isn't found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Your request exceeds a service quota. For example, you might have the maximum number of
    #       components that you can create.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The ID of the resource that exceeds the service quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that exceeds the service quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>Your request exceeded a request rate quota. For example, you might have exceeded the
    #       amount of times that you can retrieve device or deployment status per second.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The code for the quota in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The code for the service in <a href="https://docs.aws.amazon.com/servicequotas/latest/userguide/intro.html">Service Quotas</a>.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The amount of time to wait before you retry the request.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The request isn't valid. This can occur if your request contains malformed JSON or
    #       unsupported characters.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::GreengrassV2::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation exception.</p>
      def reason
        @data[:reason]
      end

      # <p>The list of fields that failed to validate.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
