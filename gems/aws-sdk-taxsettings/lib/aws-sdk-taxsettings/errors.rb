# frozen_string_literal: true

# This is generated code!

module Aws::TaxSettings
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::TaxSettings::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::TaxSettings::Errors::ServiceError
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
  # * {AttachmentUploadException}
  # * {CaseCreationLimitExceededException}
  # * {ConflictException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ValidationException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The access is denied for the Amazon Web ServicesSupport API.
    #     </p>
    class AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>Failed to upload the tax exemption document to Amazon Web ServicesSupport case.
    #     </p>
    class AttachmentUploadException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::AttachmentUploadException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>You've exceeded the Amazon Web ServicesSupport case creation limit for your account.
    #     </p>
    class CaseCreationLimitExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::CaseCreationLimitExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The exception when the input is creating conflict with the given state.</p>
    class ConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::ConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>409</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The exception thrown when an unexpected error occurs when processing a request.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>500</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The exception thrown when the input doesn't have a resource associated to it.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>404</p>
      def error_code
        @data[:error_code]
      end
    end

    # <p>The exception when the input doesn't pass validation for at least one of the input
    #       parameters. </p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::TaxSettings::Types::ValidationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>400</p>
      def error_code
        @data[:error_code]
      end

      # <p>400</p>
      def field_list
        @data[:field_list]
      end
    end
  end
end
