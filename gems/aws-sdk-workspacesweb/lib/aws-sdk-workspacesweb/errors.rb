# frozen_string_literal: true

# This is generated code!

module Aws::WorkSpacesWeb
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::WorkSpacesWeb::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkSpacesWeb::Errors::ServiceError
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
  # * {TooManyTagsException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>Access is denied.</p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>There is a conflict.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>There is an internal server error.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Advice to clients on when the call can be safely retried.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>The resource cannot be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Hypothetical identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>Hypothetical type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>The service quota has been exceeded.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Identifier of the resource affected.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p> Type of the resource affected.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The originating quota.</p>
      def quota_code
        @data[:quota_code]
      end
    end

    # <p>There is a throttling error.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The originating service.</p>
      def service_code
        @data[:service_code]
      end

      # <p>The originating quota.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>Advice to clients on when the call can be safely retried.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end
    end

    # <p>There are too many tags.</p>
    class TooManyTagsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::TooManyTagsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Name of the resource affected.</p>
      def resource_name
        @data[:resource_name]
      end
    end

    # <p>There is a validation error.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::WorkSpacesWeb::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Reason the request failed validation</p>
      def reason
        @data[:reason]
      end

      # <p>The field that caused the error.</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
