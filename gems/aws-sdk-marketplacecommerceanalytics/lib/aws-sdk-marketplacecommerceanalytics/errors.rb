# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceCommerceAnalytics
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::MarketplaceCommerceAnalytics::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::MarketplaceCommerceAnalytics::Errors::ServiceError
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
  # * {MarketplaceCommerceAnalyticsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # This exception is thrown when an internal service error occurs.
    class MarketplaceCommerceAnalyticsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::MarketplaceCommerceAnalytics::Types::MarketplaceCommerceAnalyticsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super
      end

      # This message describes details of the error.
      def message
        @data[:message]
      end
    end
  end
end
