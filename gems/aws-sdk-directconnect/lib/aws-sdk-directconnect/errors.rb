# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::DirectConnect

  # When DirectConnect returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::DirectConnect::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all DirectConnect errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectConnect::Errors::ServiceError
  #       # rescues all DirectConnect API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {DirectConnectClientException}
  # * {DirectConnectServerException}
  # * {DuplicateTagKeysException}
  # * {TooManyTagsException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class DirectConnectClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DirectConnect::Types::DirectConnectClientException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DirectConnectServerException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DirectConnect::Types::DirectConnectServerException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class DuplicateTagKeysException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DirectConnect::Types::DuplicateTagKeysException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class TooManyTagsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::DirectConnect::Types::TooManyTagsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
