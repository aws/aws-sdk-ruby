# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::WorkMailMessageFlow

  # When WorkMailMessageFlow returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::WorkMailMessageFlow::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all WorkMailMessageFlow errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::WorkMailMessageFlow::Errors::ServiceError
  #       # rescues all WorkMailMessageFlow API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {ResourceNotFoundException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::WorkMailMessageFlow::Types::ResourceNotFoundException] data
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
