module AwsSdkCodeGenerator
  module Generators
    module Resource
      class CollectionClass < Dsl::Class

        include Helper

        def initialize(resource_name:, resource:)
          @resource_name = resource_name
          @resource = resource
          @variable_name = underscore(resource_name)
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
                m.code('batch_enum.each do |batch|')
                m.code(initialize_params(action))
                m.code(batch_params_formatter(action))
                m.code(batch_request(action))
                m.code('end')
                m.code(batch_response)
              end
            end
            actions << '# @!endgroup'
            actions
          else
            []
          end
        end

        def initialize_params(action)
          param_block = []
          param_block << "  params = Aws::Util.copy_hash(options)"
          param_block << param_hash(action)
          param_block.join("\n")
        end

        def param_hash(action)
          @batch_obj = {}
          per_batch = {}
          @action_prefix = false
          action['request']['params'].each do |param|
            if param['target'].include?('[')
              parts = param['target'].split('[')
              pair = parts[0].split('.')
              if pair.length > 1
                @action_prefix = underscore(pair.first)
              end
              batch_name = underscore(pair.last)
              batch_param = underscore(parts[1].sub(/.*?\./, ''))
              batch_param = batch_param == "" ? underscore(param['name']) : batch_param
              (@batch_obj[batch_name.to_sym] ||= []) << {
                batch_param.to_sym => underscore(param['name'])
              }
            else
              per_batch[underscore(param['target']).to_sym] = underscore(param['name'])
            end
          end
          # Construct code block
          block = []
          per_batch.each do |key, value|
            block << "  params[:#{key}] = batch[0].#{value}"
          end
          if @action_prefix
            block << "  params[:#{@action_prefix}] ||= {}"
            @batch_obj.keys.each do |key|
              block << "  params[:#{@action_prefix}][:#{key}] ||= []"
            end
          else
            @batch_obj.keys.each {|key| block << "  params[:#{key}] ||= []"}
          end
          block.join("\n")
        end

        def batch_params_formatter(action)
          each_batch = []
          each_batch << "  batch.each do |item|"
          @batch_obj.each do |key, value|
            hash = {}
            value.each do |v|
              param, identifier = v.first
              hash[param.to_sym] = "item.#{identifier}"
            end
            # Construct hash block
            if @action_prefix
              each_batch << "    params[:#{@action_prefix}][:#{key}] << {"
            else
              each_batch << "    params[:#{key}] << {"
            end
            # hashformatter treats this as inline, need extra indent
            indent_count = hash.size == 1 ? 3 : 2
            each_batch << indent_helper(HashFormatter.new(wrap: false).format(hash), indent_count)
            each_batch << "    }"
          end
          each_batch << "  end"
          each_batch.join("\n")
        end

        def batch_request(action)
          "  batch[0].client.#{underscore(action['request']['operation'])}(params)"
        end

        def batch_response
          "nil"
        end

        def indent_helper(lines, count)
          block = []
          lines.split("\n").each do |line|
            next if line.strip == ""
            block << "  " * count + line
          end
          block.join("\n")
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
