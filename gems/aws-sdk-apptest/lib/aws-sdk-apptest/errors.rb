# frozen_string_literal: true

# This is generated code!

module Aws::AppTest
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::AppTest::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::AppTest::Errors::ServiceError
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
  # * {ResourceNotFoundException}
  # * {ServiceQuotaExceededException}
  # * {ThrottlingException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The account or role doesn't have the right permissions to make the request.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The parameters provided in the request conflict with existing resources.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource ID of the conflicts with existing resources.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the conflicts with existing resources.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The number of seconds to retry the query.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def retryable?
        true
      end
    end

    # <p>The specified resource was not found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource ID of the resource not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of the resource not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>One or more quotas for AWS Application Testing exceeds the limit.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The resource ID of AWS Application Testing that exceeded the limit.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The resource type of AWS Application Testing that exceeded the limit.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The service code of AWS Application Testing that exceeded the limit.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quote codes of AWS Application Testing that exceeded the limit.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>The number of requests made exceeds the limit.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The service code of requests that exceed the limit.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The quota code of requests that exceed the limit.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The number of seconds to retry after for requests that exceed the limit.</p>
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

    # <p>One or more parameter provided in the request is not valid.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppTest::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The reason for the validation exception.</p>
      def reason
        @data[:reason]
      end

      # <p>The field list of the validation exception.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
