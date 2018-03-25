# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceBatchAction
    class << self

      # @return [Array<ResourceMethod>]
      def build_list(resource_name, resource, api)
        resource.fetch('batchActions', {}).map do |name, action|
          method_name = build_method_name(name, action)
          ResourceMethod.new.tap do |m|
            m.method_name = method_name
            m.arguments = 'options = {}'
            m.code = code(action, api)
            m.documentation = docs(method_name, resource_name, action, api)
          end
        end
      end

      private

      def code(action, api)
        ResourceBatchActionCode.new(action: action, api: api).build
      end

      def docs(method_name, resource_name, action, api)
        ResourceBatchActionDocumentation.new(
          method_name: method_name,
          var_name: Underscore.underscore(resource_name),
          action: action,
          api: api
        ).build
      end

      def build_method_name(name, action)
        method_name = "batch_" + Underscore.underscore(name)
        method_name += '!' if dangerous?(name, action)
        method_name
      end

      def dangerous?(name, action)
        if
          name.match(/delete/i) ||
          name.match(/terminate/i) ||
          action['request']['operation'].match(/delete/i) ||
          action['request']['operation'].match(/terminate/i)
        then
          true
        else
          false
        end
      end

    end
  end
end
