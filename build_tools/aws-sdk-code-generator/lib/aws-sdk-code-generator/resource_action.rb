module AwsSdkCodeGenerator
  class ResourceAction
    class << self

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
          action['resource']['type']
        elsif operation['output']
          "Types::#{operation['output']['shape']}"
        else
          "EmptyStructure"
        end
      end

    end
  end
end
