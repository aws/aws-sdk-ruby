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
                name = underscore(name).downcase
                m.returns('void')
                m.param('options', default: {})
                m.code(validate_param)
                m.code('batch_enum.each do |batch|')
                m.code(batch_params(name, action))
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

        def validate_param
          block = []
          block << "if ! options.is_a? Hash"
          $msg = "expected :options to be a Hash."
          block << "  raise ArgumentError, \'#{$msg}\'"
          block << "end"
          block.join("\n")
        end

        def batch_params(name, action)
          param_block = []
          param_block << "  params = Aws::Util.deep_merge(options, {"
          param_block << params_formatter(name, action)
          param_block << "  })"
          param_block << batch_params_formatter(name, action)
          param_block.join("\n")
        end

        def params_formatter(name, action)
          hash = {}
          @batch_obj = {}
          action['request']['params'].each do |param|
            if param['target'].include?('[')
              parts = param['target'].split('[')
              batch_name = underscore(parts[0].sub(/.*?\./, ''))
              batch_param = underscore(parts[1].sub(/.*?\./, ''))
              batch_param = batch_param == "" ? underscore(param['name']) : batch_param
              (@batch_obj[batch_name.to_sym] ||= []) << batch_param
            else
              hash[underscore(param['target']).to_sym] = "batch[0].#{underscore(param['name'])}"
            end
          end
          @batch_obj.keys.each do |key|
            if hash.has_key? name.to_sym
              hash[name.to_sym][key.to_sym] = []
            else
              hash[name.to_sym] = {key.to_sym => []}
            end
          end
          # hashformatter treats this as inline, need extra indent
          indent_count = hash.size == 1 ? 2 : 1
          indent_helper(HashFormatter.new(wrap: false).format(hash), indent_count)
        end

        def batch_params_formatter(name, action)
          each_batch = []
          each_batch << "  batch.each do |item|"
          @batch_obj.each do |key, value|
            hash = {}
            value.each do |v|
              hash[v.to_sym] = "item.#{v}" if !v.empty?
            end
            if hash.size > 0
              each_batch << "    params[:#{name}][:#{key}] << {"
              # hashformatter treats this as inline, need extra indent
              indent_count = hash.size == 1 ? 3 : 2
              each_batch << indent_helper(HashFormatter.new(wrap: false).format(hash), indent_count)
              each_batch << "    }"
            end
          end
          each_batch << "  end"
          each_batch
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
