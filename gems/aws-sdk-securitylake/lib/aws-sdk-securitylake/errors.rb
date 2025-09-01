# frozen_string_literal: true

# This is generated code!

module Aws::SecurityLake
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::SecurityLake::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SecurityLake::Errors::ServiceError
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
  # * {BadRequestException}
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>You do not have sufficient access to perform this action. Access denied errors appear when Amazon Security Lake explicitly or implicitly denies an authorization
    #          request. An explicit denial occurs when a policy contains a Deny statement for the specific
    #          Amazon Web Services action. An implicit denial occurs when there is no applicable Deny statement and also
    #          no applicable Allow statement.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>A coded string to provide more information about the access denied exception. You can use the error code to check the exception type.</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The request is malformed or contains an error such as an invalid parameter value or a missing required parameter.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Occurs when a conflict with a previous successful write is detected. This generally
    #          occurs when the previous write did not have time to propagate to the host serving the
    #          current request. A retry (with appropriate backoff logic) is the recommended response to
    #          this exception.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource name.</p>
      def resource_name
        @data[:resource_name]
      end

      # <p>The resource type.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>Internal service exceptions are sometimes caused by transient issues. Before you start
    #          troubleshooting, perform the operation again.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      def retryable?
        true
      end
    end

    # <p>The resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The name of the resource that could not be found.</p>
      def resource_name
        @data[:resource_name]
      end

      # <p>The type of the resource that could not be found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The limit on the number of requests per second was exceeded.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::SecurityLake::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The code for the service in Service Quotas.</p>
      def service_code
        @data[:service_code]
      end

      # <p>That the rate of requests to Security Lake is exceeding the request quotas for your Amazon Web Services account.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Retry the request after the specified time.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end

      def throttling?
        true
      end
    end
  end
end
