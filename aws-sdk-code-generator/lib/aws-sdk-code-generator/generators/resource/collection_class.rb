module AwsSdkCodeGenerator
  module Generators
    module Resource
      class CollectionClass < Dsl::Class

        include Helper

        def initialize(resource_name:, resource:)
          @resource_name = resource_name
          @resource = resource
          @variable_name = underscore(resource_name)
          super('Collection')
          include_module('Aws::ResourceCollection')
          add(each_method)
          #add(*batch_actions)
        end

        def apply(mod)
          mod.class(@resource_name) do |m|
            m.add(self)
          end
        end

        private

        def each_method
          Dsl::Method.new('each') do |m|
            m.returns("Enumerator<#{@resource_name}>")
            m.block_param
            m.code(<<-CODE)
enum = super
enum.each(&block) if block
enum
            CODE
          end
        end

        def batch_actions
          if @resource['batchActions']
            actions = []
            actions << '# @!group Batch Actions'
            @resource['batchActions'].each do |name, action|
              actions << Dsl::Method.new(batch_action_name(name, action)) do |m|
                m.returns('void')
                #m.code(<<-CODE)
batches.each do |batch|
  params = {}
  batch.each.with_index do |item, n|
    Aws::Util.deep_merge(params, {
    })
  end
  @client.operation_name(params)
end
nil
                CODE
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
