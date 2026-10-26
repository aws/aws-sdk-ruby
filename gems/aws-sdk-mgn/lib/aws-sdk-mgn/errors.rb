# frozen_string_literal: true

# This is generated code!

module Aws::Mgn
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Mgn::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Mgn::Errors::ServiceError
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
  # * {UninitializedAccountException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Operation denied due to a file permission or access check error.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>The request could not be completed due to a conflict with the current state of the target resource.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>A conflict occurred when prompting for the Resource ID.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>A conflict occurred when prompting for resource type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Conflict Exception specific errors.</p>
      def errors
        @data[:errors]
      end
    end

    # <p>The server encountered an unexpected condition that prevented it from fulfilling the request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The server encountered an unexpected condition that prevented it from fulfilling the request. The request will be retried again after x seconds.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>Resource not found exception.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>Resource ID not found error.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Resource type not found error.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The request could not be completed because it exceeded the service quota.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>Exceeded the service quota resource ID.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Exceeded the service quota resource type.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>Exceeded the service quota service code.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Exceeded the service quota code.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Exceeded the service quota value.</p>
      def quota_value
        @data[:quota_value]
      end
    end

    # <p>Reached throttling quota exception.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Reached throttling quota exception service code.</p>
      def service_code
        @data[:service_code]
      end

      # <p>Reached throttling quota exception.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Reached throttling quota exception will retry after x seconds.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>Uninitialized account exception.</p>
    class UninitializedAccountException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::UninitializedAccountException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end
    end

    # <p>Validate exception.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Mgn::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      def code
        @data[:code]
      end

      # <p>Validate exception reason.</p>
      def reason
        @data[:reason]
      end

      # <p>Validate exception field list.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
