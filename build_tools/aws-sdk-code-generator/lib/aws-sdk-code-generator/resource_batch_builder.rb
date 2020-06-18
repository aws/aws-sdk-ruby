# frozen_string_literal: true

require 'set'

module AwsSdkCodeGenerator
  class ResourceBatchBuilder

    # @option options [required, Hash] :resource
    # @option options [String] :resp_var_name ('resp')
    def initialize(options)
      @resource = options.fetch(:resource)
      @resp_var_name = options.fetch(:resp_var_name, 'resp')
      verify_resource!
      @context = loop_context
      @indent = options.fetch(:indent, '')
    end

    def build
      code = ''
      loops = self.send(:loops)
      count = loops.size
      loops.each.with_index do |loop_expression, n|
        i = '  ' * n
        code += "#{i}#{loop_expression}\n"
        if n == count - 1
          code += i + '  ' + Docstring.indent("batch << #{resource_class}.new(#{constructor_args})\n", i + '  ')
        end
      end
      (count).times do |n|
        i = '  ' * (count - n - 1)
        code += "#{i}end\n"
      end
      code.rstrip
    end

    private

    def resource_class
      @resource['type']
    end

    def constructor_args
      hash = {}
      hash.update(identifiers)
      hash[:data] = data_path if @resource['path']
      hash[:client] = "@client"
      HashFormatter.new(wrap:false, inline:true).format(hash)
    end

    def identifiers
      (@resource['identifiers'] || []).inject({}) do |hash, identifier|
        value = relative_identifier_path(identifier)
        hash[underscore(identifier['target']).to_sym] = value
        hash
      end
    end

    def data_path
      relative_identifier_path({
        'source' => 'data',
        'path' => @resource['path'],
      })
    end

    def relative_identifier_path(identifier)
      path = identifier['path']
      if path && path.include?('[]')
        prefix = loops.last.match(/\|(.+)\|/)[1]
        suffix = underscore(path[common_prefix.length..-1])
        unless @context == :response
          suffix = suffix.gsub(/\.\w+/) { |word| "[:#{word[1..-1]}]" }
        end
        suffix.length == 0 ? prefix : prefix + suffix
      else
        ResourceValueSource.new(identifier).to_s
      end
    end

    def common_prefix
      paths = plural_paths
      if paths.empty?
        ''
      elsif paths.size == 1
        # grab everything upto and including the final []
        paths.first.match(/(.+\[\]).*?$/)[1]
      else
        prefix = find_prefix(paths)
        prefix = prefix.sub(/\[\].+?$/, '[]')
        if prefix[-2..-1] != '[]'
          msg = 'response paths must have a common prefix ending in [], got :'
          msg << paths.inspect
          raise ArgumentError, msg
        else
          prefix
        end
      end
    end

    def find_prefix(paths)
      prefix = ''
      loop.with_index do |_, n|
        return prefix if paths.empty?
        letter = paths[0][n]
        paths.each do |path|
          return prefix if path[n].nil?
          return prefix if path[n] != letter
        end
        prefix += letter
      end
    end

    def loops
      loop_var =
        case @context
        when :data then 'data'
        when :options then 'options'
        when :response then "#{@resp_var_name}.data."
        end

      used_vars = Set.new
      used_vars << loop_var

      parts = common_prefix.split('[]')
      parts = parts.map.with_index do |part,n|
        part = underscore(part)
        unless @context == :response
          part = part.gsub(/\w+/) { |word| "[:#{word}]" }
          part = part.gsub(/\./, '')
        end
        part = "#{loop_var}#{part}"
        loop_var = loop_letter(part, used_vars)
        part = part + ".each do |#{loop_var}|"
        part
      end
      parts
    end

    def loop_letter(str, used_vars)
      letter = if @context == :options
        str.scan(/:\w/).last[1]
      else
        str.split('.').last[0]
      end
      n = 1
      var = letter
      while used_vars.include?(var)
        n += 1
        var = "#{letter}#{n}"
      end
      used_vars << var
      var
    end

    def all_plural_paths
      paths = {}
      @resource['identifiers'].each do |i|
        if i['path'] && i['path'].include?('[]')
          paths[i['source']] ||= []
          paths[i['source']] << i['path']
        end
      end
      paths
    end

    def plural_paths
      all_plural_paths.values.first
    end

    def verify_resource!
      verify_plural_paths!
    end

    def verify_plural_paths!
      paths = all_plural_paths
      case paths.size
      when 0
        msg = 'expected at least one plural identifier path, got none'
        raise ArgumentError, msg
      when 1
        case paths.keys.first
        when 'requestParameter'
        when 'response'
        when 'data'
        else
          msg = "unsupported identifier source #{paths.keys.first.inspect}"
          raise ArgumentError, msg
        end
      else
        msg = 'mixing plural source types is not supported'
        raise ArgumentError, msg
      end
    end

    def loop_context
      case all_plural_paths.keys
      when ['response'] then :response
      when ['data'] then :data
      when ['requestParameter'] then :options
      else
        msg = "unable to determine loop context: #{@resource.inspect}"
        raise msg
      end
    end

    def underscore(str)
      str.split('.').map do |part|
        Underscore.underscore(part)
      end.join('.')
    end

  end
end
