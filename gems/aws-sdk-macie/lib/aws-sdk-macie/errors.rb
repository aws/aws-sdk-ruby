# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Macie

  # When Macie returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Macie::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Macie errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Macie::Errors::ServiceError
  #       # rescues all Macie API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {AccessDeniedException}
  # * {InternalException}
  # * {InvalidInputException}
  # * {LimitExceededException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Macie::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def resource_type
        @data[:resource_type]
      end
    end

    class InternalException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Macie::Types::InternalException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end
    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Macie::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def field_name
        @data[:field_name]
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Macie::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def error_code
        @data[:error_code]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def resource_type
        @data[:resource_type]
      end
    end

  end
end
