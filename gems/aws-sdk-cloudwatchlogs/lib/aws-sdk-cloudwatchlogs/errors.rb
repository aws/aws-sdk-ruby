# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::CloudWatchLogs
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

  end
end
