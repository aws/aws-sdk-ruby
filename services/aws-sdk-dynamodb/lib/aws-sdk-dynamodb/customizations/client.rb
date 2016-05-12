require 'aws-sdk-dynamodb/plugins/extended_retries'
require 'aws-sdk-dynamodb/plugins/simple_attributes'
require 'aws-sdk-dynamodb/plugins/crc32_validation'

module Aws
  module DynamoDB
    class Client

      add_plugin(Aws::DynamoDB::Plugins::ExtendedRetries)
      add_plugin(Aws::DynamoDB::Plugins::SimpleAttributes)
      add_plugin(Aws::DynamoDB::Plugins::CRC32Validation)

      def stub_data(operation_name, data = {})
        if config.simple_attributes
          rules = config.api.operation(operation_name).output
          translator = Plugins::DynamoDBSimpleAttributes::ValueTranslator
          data = translator.apply(rules, :marshal, data)
          data = super(operation_name, data)
          translator.apply(rules, :unmarshal, data)
        else
          super
        end
      end

      private

      def data_to_http_resp(operation_name, data)
        api = config.api
        operation = api.operation(operation_name)
        translator = Plugins::DynamoDBSimpleAttributes::ValueTranslator
        translator = translator.new(operation.output, :marshal)
        data = translator.apply(data)
        ParamValidator.validate!(operation.output, data)
        protocol_helper.stub_data(api, operation, data)
      end

    end
  end
end
