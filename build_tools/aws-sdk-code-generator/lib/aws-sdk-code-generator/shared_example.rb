module AwsSdkCodeGenerator
  class SharedExample

    def initialize(params, method_name, operation, api, comments)
      @params = params
      @method_name = method_name
      @operation = operation
      @api = api
      @comments = comments
      @params ||= {}
    end

    def to_str_input
      lines = structure(@params, Api.shape(@operation['input'], @api), "", [])
      params = lines.join("\n")
      "resp = client.#{@method_name}(#{params})"
    end

    def to_str_output
      lines = structure(@params, Api.shape(@operation['output'], @api), "", [])
      params = lines.join("\n")
      "#{params}"
    end

    private

    def entry(json, ref, indent, path)
      case ref['type']
      when 'structure' then structure(json, ref, indent, path)
      when 'map' then map(json, ref, indent, path)
      when 'list' then list(json, ref, indent, path)
      when 'timestamp' then "Time.parse(#{json.inspect})"
      when 'string', 'blob' then string(json)
      else json
      end
    end

    def string(json)
      # Travis jruby hangs when parsing long string (e.g. policy string)
      # Clean all white spaces in those strings
      if json.length > 2048
        json.gsub(/\s+/, "").inspect
      else
        json.inspect
      end
    end

    def structure(json, ref, indent, path)
      lines = ["{"]
      json.each do |key, val|
        path << ".#{key}"
        shape_val = entry(val, Api.shape(ref['members'][key], @api), "#{indent}  ", path)
        lines << "#{indent}  #{Underscore.underscore(key)}: #{format(shape_val)}, #{apply_comments(path)}"
        path.pop
      end
      lines << "#{indent}}"
      lines
    end

    def map(json, ref, indent, path)
      lines = ["{"]
      json.each do |key, val|
        path << ".#{key}"
        _, ref_value = Api.resolve(ref['value'], @api)
        shape_val = entry(val, ref_value, "#{indent}  ", path)
        lines << "#{indent}  \"#{key}\" => #{format(shape_val)}, #{apply_comments(path)}"
        path.pop
      end
      lines << "#{indent}}"
      lines
    end

    def list(json, ref, indent, path)
      lines = ["["]
      json.each_with_index do |member, index|
        path << "[#{index}]"
        _, ref_val = Api.resolve(ref['member']['shape'], @api)
        shape_val = entry(member, ref_val, "#{indent}  ", path)
        if shape_val.is_a?(Array)
          shape_val = shape_val.join("\n")
        end
        lines << "#{indent}  #{shape_val}, #{apply_comments(path)}"
        path.pop
      end
      lines << "#{indent}]"
      lines
    end

    def format(shape_val)
      formatted = []
      if shape_val.is_a?(Array)
        hashes = []
        shape_val.each do |v|
          hashes << (v.is_a?(Hash) ? format_hash(v, '  ') : v)
        end
        hashes.join(",")
        formatted << hashes
      elsif shape_val.is_a?(Hash)
        formatted << format_hash(shape_val, '  ')
      else
        formatted << shape_val
      end
      formatted.join("\n")
    end

    def format_hash(value, indent)
      HashFormatter.new(indent: indent).format(value)
    end

    def apply_comments(path)
      key = path.join().sub(/^\./, '')
      if @comments && @comments[key]
        "# #{@comments[key]}"
      else
        ""
      end
    end
  end
end
