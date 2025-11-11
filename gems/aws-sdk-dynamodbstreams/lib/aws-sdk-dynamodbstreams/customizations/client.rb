# frozen_string_literal: true

module Aws
  module DynamoDBStreams
    class Client # rubocop:disable Style/Documentation
      def stub_data(operation_name, data = {})
        if config.simple_attributes
          rules = config.service.operation(operation_name).output
          translator = Plugins::SimpleAttributes::ValueTranslator
          data = translator.apply(rules, :marshal, data)
          data = Smithy::Client::Stubbing::StubData.new(@config.service.operation(operation_name)).stub(data)
          translator.apply(rules, :unmarshal, data)
        else
          super
        end
      end

      private

      def data_to_http_response(operation_name, data)
        operation = @config.service.operation(operation_name)
        if config.simple_attributes
          translator = Plugins::SimpleAttributes::ValueTranslator
          translator = translator.new(operation.output, :marshal)
          data = translator.apply(data)
        end
        data = Smithy::Client::ParamConverter.new(operation.output).convert(data)
        Smithy::Client::ParamValidator.new(operation.output, validate_required: false).validate!(data, context: 'stub')
        @config.stubber.stub_data(@config, operation, data)
      end
    end
  end
end
