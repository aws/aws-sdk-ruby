module AwsSdkCodeGenerator
  module Generators
    module Resource
      class CollectionClass < Dsl::Class

        include Helper

        # @option options [required, String] :resource_name
        # @option options [required, Hash] :resource
        def initialize(options)
          @resource_name = options.fetch(:resource_name)
          @resource = options.fetch(:resource)
          @variable_name = underscore(@resource_name)
          super('Collection', extends: 'Aws::Resources::Collection')
          add(*batch_actions)
        end

        def apply(mod)
          mod.class(@resource_name) do |m|
            m.add(self)
          end
        end

        private

        def batch_actions
          if @resource['batchActions']
            actions = []
            actions << '# @!group Batch Actions'
            @resource['batchActions'].each do |name, action|
              actions << Dsl::Method.new(batch_action_name(name, action)) do |m|
                m.returns('void')
                m.param('options', default: {})
              end
            end
            actions << '# @!endgroup'
            actions
          else
            []
          end
        end

        def batch_action_name(name, action)
          method_name = "batch_" + underscore(name)
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
end
