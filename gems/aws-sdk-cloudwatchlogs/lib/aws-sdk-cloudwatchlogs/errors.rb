# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs

  # When CloudWatchLogs returns an error response, the Ruby SDK constructs and raises an error.
  # These errors all extend Aws::CloudWatchLogs::Errors::ServiceError < {Aws::Errors::ServiceError}
  #
  # You can rescue all CloudWatchLogs errors using ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatchLogs::Errors::ServiceError
  #       # rescues all CloudWatchLogs API errors
  #     end
  #
  #
  # ## Request Context
  # ServiceError objects have a {Aws::Errors::ServiceError#context #context} method that returns
  # information about the request that generated the error.
  # See {Seahorse::Client::RequestContext} for more information.
  #
  # ## Error Classes
  # * {DataAlreadyAcceptedException}
  # * {InvalidOperationException}
  # * {InvalidParameterException}
  # * {InvalidSequenceTokenException}
  # * {LimitExceededException}
  # * {MalformedQueryException}
  # * {OperationAbortedException}
  # * {ResourceAlreadyExistsException}
  # * {ResourceNotFoundException}
  # * {ServiceUnavailableException}
  # * {UnrecognizedClientException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors

    extend Aws::Errors::DynamicErrors

    class DataAlreadyAcceptedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::DataAlreadyAcceptedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def expected_sequence_token
        @data[:expected_sequence_token]
      end
    end

    class InvalidOperationException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::InvalidOperationException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidParameterException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::InvalidParameterException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class InvalidSequenceTokenException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::InvalidSequenceTokenException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def expected_sequence_token
        @data[:expected_sequence_token]
      end
    end

    class LimitExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::LimitExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class MalformedQueryException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::MalformedQueryException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def query_compile_error
        @data[:query_compile_error]
      end
    end

    class OperationAbortedException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::OperationAbortedException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceAlreadyExistsException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::ResourceAlreadyExistsException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ResourceNotFoundException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::ResourceNotFoundException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class ServiceUnavailableException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::ServiceUnavailableException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

    class UnrecognizedClientException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::CloudWatchLogs::Types::UnrecognizedClientException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end
    end

  end
end
