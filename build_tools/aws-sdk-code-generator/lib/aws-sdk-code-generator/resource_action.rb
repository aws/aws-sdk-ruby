# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceAction
    class << self

      include Helper

      # @return [Array<ResourceMethod>]
      def build_list(resource_name, resource, api)
        resource.fetch('actions', {}).map do |action_name, action|
          build(
            resource_name: resource_name,
            action_name: action_name,
            action: action,
            api: api
          )
        end
      end

      # @option options [required, String] :resource_name
      # @option options [required, String] :action_name
      # @option options [required, String] :action
      # @option options [required, String] :api
      def build(options)
        ResourceMethod.new.tap do |m|
          m.method_name = Underscore.underscore(options.fetch(:action_name))
          m.arguments = 'options = {}'
          operation_name = options.fetch(:action)['request']['operation']
          api = options.fetch(:api)
          if operation_streaming?(api['operations'][operation_name], api)
            m.arguments += ', &block'
            options[:streaming] = true
          end
          m.code = ResourceActionCode.new(options).build
          m.documentation = documentation(options)
        end
      end

      private

      def documentation(options)
        api = options.fetch(:api)
        action = options.fetch(:action)
        operation = api['operations'][action['request']['operation']]
        ResourceClientReqeustDocumentation.new(
          method_name: Underscore.underscore(options.fetch(:action_name)),
          receiver: Underscore.underscore(options.fetch(:resource_name)),
          resp_var: action['resource'] ? action['resource']['type'].downcase : nil,
          returns: returns(action, operation),
          request: action['request'],
          api: api,
        ).build
      end

      def returns(action, operation)
        if action['resource']
          resource = action['resource']
          Api.plural?(resource) ? "#{resource['type']}::Collection" : resource['type']
        elsif operation['output']
          "Types::#{operation['output']['shape']}"
        else
          "EmptyStructure"
        end
      end

    end
  end
end
