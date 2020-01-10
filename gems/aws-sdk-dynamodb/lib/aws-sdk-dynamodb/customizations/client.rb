module Aws
  module DynamoDB
    class Client

      def stub_data(operation_name, data = {})
        if config.simple_attributes
          rules = config.api.operation(operation_name).output
          translator = Plugins::SimpleAttributes::ValueTranslator
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
        translator = Plugins::SimpleAttributes::ValueTranslator
        translator = translator.new(operation.output, :marshal)
        data = translator.apply(data)
        ParamValidator.validate!(operation.output, data)
        protocol_helper.stub_data(api, operation, data)
      end

    end
  end
end
