# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceBatchActionCode

    def initialize(options)
      @action = options.fetch(:action)
      @api = options.fetch(:api)
      compute_params
    end

    # @return [String]
    def build
      parts = []
      parts << 'batch_enum.each do |batch|'
      parts << initialize_params
      parts << apply_params_per_batch
      parts << "  Aws::Plugins::UserAgent.metric('RESOURCE_MODEL') do"
      parts << "    batch[0].client.#{client_method}(params)"
      parts << '  end'
      parts << 'end'
      parts << 'nil'
      parts.join("\n").rstrip
    end

    private

    def compute_params
      @batch_obj = {}
      @per_batch = {}
      @action_prefix = false
      @action['request']['params'].each do |param|
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

    def client_method
      Underscore.underscore(@action['request']['operation'])
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
        first_line = @action_prefix ? "    params[:#{underscore(@action_prefix)}][:#{underscore(key)}] << "
          : "    params[:#{underscore(key)}] << "
        if list_of_string?(key, @action['request']['operation'])
          _, v = hash.first
          each_batch << first_line + v
        else
          each_batch << first_line + "{"
          # hashformatter treats this as inline, need extra indent
          indent_count = hash.size == 1 ? 3 : 2
          each_batch << indent_helper(HashFormatter.new(wrap: false).format(hash), indent_count)
          each_batch << "    }"
        end
      end
      each_batch << "  end"
      each_batch.join("\n")
    end

    def indent_helper(lines, count)
      block = []
      lines.split("\n").each do |line|
        next if line.strip == ""
        block << "  " * count + line
      end
      block.join("\n")
    end

    def underscore(str)
      Underscore.underscore(str)
    end

    def list_of_string?(member, operation_name)
      operation_shape = @api['operations'][operation_name]
      input_shape = @api['shapes'][operation_shape['input']['shape']]

      members = input_shape['type'] == 'structure' ? 'members' : 'member'
      if @action_prefix
        prefix_shape_ref = input_shape[members][@action_prefix]
        _, prefix_shape = Api.resolve(prefix_shape_ref, @api)
        prefix_members = prefix_shape['type'] == 'structure' ? 'members' : 'member'
        member_shape_ref = prefix_shape[prefix_members][member]
      else
        member_shape_ref = input_shape[members][member]
      end
      _, shape = Api.resolve(member_shape_ref, @api)
      return false unless shape['type'] == 'list'
      _, item_shape = Api.resolve(shape['member'], @api)
      item_shape['type'] == 'string'
    end

  end
end
