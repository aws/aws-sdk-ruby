# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Lightsail

  # When Lightsail returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::Lightsail::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all Lightsail errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Lightsail::Errors::ServiceError
  #       # rescues all Lightsail API errors
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
  # * {AccountSetupInProgressException}
  # * {InvalidInputException}
  # * {NotFoundException}
  # * {OperationFailureException}
  # * {ServiceException}
  # * {UnauthenticatedException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class AccessDeniedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::AccessDeniedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class AccountSetupInProgressException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::AccountSetupInProgressException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class InvalidInputException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::InvalidInputException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class NotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::NotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class OperationFailureException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::OperationFailureException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class ServiceException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::ServiceException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

    class UnauthenticatedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Lightsail::Types::UnauthenticatedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def code
        @code || @data[:code]
      end

      # @return [String]
      def docs
        @data[:docs]
      end

      # @return [String]
      def message
        @message || @data[:message]
      end

      # @return [String]
      def tip
        @data[:tip]
      end
    end

  end
end
