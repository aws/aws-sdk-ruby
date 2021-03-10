# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::SagemakerEdgeManager

  # When SagemakerEdgeManager returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::SagemakerEdgeManager::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all SagemakerEdgeManager errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SagemakerEdgeManager::Errors::ServiceError
  #       # rescues all SagemakerEdgeManager API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {InternalServiceException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class InternalServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::SagemakerEdgeManager::Types::InternalServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

  end
end
