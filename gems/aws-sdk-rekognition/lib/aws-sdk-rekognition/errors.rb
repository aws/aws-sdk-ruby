# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::Rekognition
  module Errors

    extend Aws::Errors::DynamicErrors

    class HumanLoopQuotaExceededException < ServiceError

      # @param [Seahorse::Client::RequestContext] context
      # @param [String] message
      # @param [Aws::Rekognition::Types::HumanLoopQuotaExceededException] data
      def initialize(context, message, data = Aws::EmptyStructure.new)
        super(context, message, data)
      end

      # @return [String]
      def resource_type
        @data[:resource_type]
      end

      # @return [String]
      def quota_code
        @data[:quota_code]
      end

      # @return [String]
      def service_code
        @data[:service_code]
      end

    end

  end
end
