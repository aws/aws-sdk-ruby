# frozen_string_literal: true

# This is generated code!

module Aws::AppConfigData
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::AppConfigData::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::AppConfigData::Errors::ServiceError
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
  # * {BadRequestException}
  # * {InternalServerException}
  # * {ResourceNotFoundException}
  # * {ThrottlingException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The input fails to satisfy the constraints specified by the service.</p>
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppConfigData::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>Code indicating the reason the request was invalid.</p>
      def reason
        @data[:reason]
      end

      # <p>Details describing why the request was invalid.</p>
      def details
        @data[:details]
      end
    end

    # <p>There was an internal failure in the service.</p>
    class InternalServerException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppConfigData::Types::InternalServerException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end

    # <p>The requested resource could not be found.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppConfigData::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end

      # <p>The type of resource that was not found.</p>
      def resource_type
        @data[:resource_type]
      end

      # <p>A map indicating which parameters in the request reference the resource that was not
      #          found.</p>
      def referenced_by
        @data[:referenced_by]
      end
    end

    # <p>The request was denied due to request throttling.</p>
    class ThrottlingException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::AppConfigData::Types::ThrottlingException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      def message
        @data[:message]
      end
    end
  end
end
