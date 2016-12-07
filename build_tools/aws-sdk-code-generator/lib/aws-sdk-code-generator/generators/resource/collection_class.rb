module AwsSdkCodeGenerator
  module Generators
    module Resource
      class CollectionClass < Dsl::Class

        include Helper

        # @option options [required, String] :resource_name
        # @option options [required, Hash] :resource
        # @option options [required, Hash] :api
        def initialize(options)
          @resource_name = options.fetch(:resource_name)
          @resource = options.fetch(:resource)
          @variable_name = underscore(@resource_name)
          @api = options.fetch(:api)
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
                param_hash(action)
                apply_batch_action_doc(action, m)
                m.code('batch_enum.each do |batch|')
                m.code(initialize_params)
                m.code(apply_params_per_batch)
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

        def param_hash(action)
          @batch_obj = {}
          @per_batch = {}
          @action_prefix = false
          action['request']['params'].each do |param|
            if param['target'].include?('[')
              parts = param['target'].split('[')
              pair = parts[0].split('.')
              if pair.length > 1
                @action_prefix = pair.first
              end
              batch_name = pair.last
              batch_param = underscore(parts[1].sub(/.*?\./, ''))
              batch_param = batch_param == "" ? underscore(param['name']) : batch_param
              (@batch_obj[batch_name] ||= []) << {
                batch_param.to_sym => underscore(param['name'] || param['path'])
              }
            else
              @per_batch[param['target']] = underscore(param['name'])
            end
          end
        end

        def apply_batch_action_doc(action, method)
          skip = []
          if @action_prefix
            skip << @action_prefix
          else
            skip += @per_batch.keys
            skip += @batch_obj.keys
          end
          ClientRequestDocs.new(
            request: action['request'],
            api: @api,
            skip: skip,
            var_name: @variable_name,
            returns: nil
          ).apply(method)
        end

        def initialize_params
          param_block = []
          param_block << "  params = Aws::Util.copy_hash(options)"
          param_block << apply_param_hash
          param_block.join("\n")
        end

        def apply_param_hash
          block = []
          @per_batch.each do |key, value|
            block << "  params[:#{underscore(key)}] = batch[0].#{value}"
          end
          if @action_prefix
            action = underscore(@action_prefix)
            block << "  params[:#{action}] ||= {}"
            @batch_obj.keys.each do |key|
              block << "  params[:#{action}][:#{underscore(key)}] ||= []"
            end
          else
            @batch_obj.keys.each {|key| block << "  params[:#{underscore(key)}] ||= []"}
          end
          block.join("\n")
        end

        def apply_params_per_batch
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
              each_batch << "    params[:#{underscore(@action_prefix)}][:#{underscore(key)}] << {"
            else
              each_batch << "    params[:#{underscore(key)}] << {"
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
