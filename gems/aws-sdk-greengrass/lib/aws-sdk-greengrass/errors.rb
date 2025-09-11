# frozen_string_literal: true

# This is generated code!

module Aws::Greengrass
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Greengrass::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Greengrass::Errors::ServiceError
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
  # * {InternalServerErrorException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # General error information.
    class BadRequestException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Greengrass::Types::BadRequestException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Details about the error.
      def error_details
        @data[:error_details]
      end

      # A message containing information about the error.
      def message
        @data[:message]
      end
    end

    # General error information.
    class InternalServerErrorException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Greengrass::Types::InternalServerErrorException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # Details about the error.
      def error_details
        @data[:error_details]
      end

      # A message containing information about the error.
      def message
        @data[:message]
      end
    end
  end
end
