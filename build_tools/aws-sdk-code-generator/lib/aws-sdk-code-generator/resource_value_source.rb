# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceValueSource < String

    def initialize(value)
      super(send("param_#{underscore(value['source'])}", value))
    end

    private

    def param_identifier(param)
      "@" + underscore(param['name'])
    end

    def param_data(param)
      path = param['path']
      if path == '@'
        'data'
      elsif path.match(/^(\w(\[0\])?)+(\.\w+)*$/)
        data_path = underscore_path(path).gsub(/\w+/) { |word| "[:#{word}]" }
        # In case resource model path contains x.[:0].y
        'data' + data_path.gsub(/\[\[\:/, '[').gsub(/\]\]/, ']').gsub(/\./, '')
      else
        raise "unsupported path: #{path.inspect}"
      end
    end

    def param_response(param)
      if param['path'] == '@'
        'resp.data'
      else
        'resp.data.' + underscore_path(param['path'].gsub(/\[\]/, "[0]"))
      end
    end

    def param_request_parameter(param)
      if param['path'].match(/^\w+(\.\w+)*$/)
        "options" + path_parts(param['path']).map { |part| "[:#{part}]" }.join
      else
        raise "unsupported path expression: #{param['path']}"
      end
    end

    def param_string(param)
      param['value'].inspect
    end
    alias param_integer param_string
    alias param_boolean param_string

    def param_input(param)
      underscore(param['target'])
    end

    def underscore(str)
      Underscore.underscore(str)
    end

    def underscore_path(path)
      path.gsub(/\w+/) { |part| underscore(part) }
    end

    def path_parts(path)
      path.split('.').map { |part| underscore(part) }
    end

  end
end
