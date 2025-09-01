# frozen_string_literal: true

# This is generated code!

module Aws::BCMDataExports
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::BCMDataExports::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::BCMDataExports::Errors::ServiceError
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

    # <p>An error on the server occurred during the processing of your request. Try again
    #       later.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMDataExports::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end
    end

    # <p>The specified Amazon Resource Name (ARN) in the request doesn't exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMDataExports::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that was not found.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end
    end

    # <p>You've reached the limit on the number of resources you can create, or exceeded the size
    #       of an individual resource.</p>
    class ServiceQuotaExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMDataExports::Types::ServiceQuotaExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The identifier of the resource that exceeded quota.</p>
      def resource_id
        @data[:resource_id]
      end

      # <p>The type of the resource that exceeded quota.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>The quota code that was exceeded.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code that exceeded quota. It will always be
      #       “AWSBillingAndCostManagementDataExports”.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMDataExports::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def message
        @data[:message]
      end

      # <p>The quota code that exceeded the throttling limit.</p>
      def quota_code
        @data[:quota_code]
      end

      # <p>The service code that exceeded the throttling limit. It will always be
      #       “AWSBillingAndCostManagementDataExports”.</p>
      def service_code
        @data[:service_code]
      end
    end

    # <p>The input fails to satisfy the constraints specified by an Amazon Web Services
    #       service.</p>
    class ValidationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::BCMDataExports::Types::ValidationException] data
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

      # <p>The list of fields that are invalid.</p>
      def fields
        @data[:fields]
      end
    end
  end
end
