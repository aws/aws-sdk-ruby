require 'set'
# kramdown
require 'kramdown'

# disable inline attribute lists
class Kramdown::Converter::Kramdown
  def ial_for_element(*args)
    nil
  end
end
# end kramdown

module AwsSdkCodeGenerator
  module Helper

    def identifier_type(identifier)
      case identifier['type']
      when nil, 'string' then 'String'
      when 'integer' then 'Integer'
      else
        msg = "unsupported identifier type `#{identifier['type']}'"
        raise ArgumentError, msg
      end
    end

    def underscore(str)
      str.split('.').map do |part|
        Underscore.underscore(part)
      end.join('.')
    end

    def structures
      Enumerator.new do |y|
        (@api['shapes'] || {}).each do |shape_name, shape|
          if shape['type'] == 'structure' && !shape['error'] && !shape['exception']
            y.yield(shape_name, shape)
          end
        end
      end
    end

    # @option options [Boolean] :nested (false)
    def ruby_input_type(shape_ref, options = {})
      nested = options.fetch(:nested, false)
      shape = @api['shapes'][shape_ref['shape']]
      case shape['type']
      when 'byte' then 'Integer<byte>'
      when 'blob' then 'String, IO'
      when 'boolean' then 'Boolean'
      when 'character' then 'String<character>'
      when 'double' then 'Float'
      when 'float' then 'Float'
      when 'integer' then 'Integer'
      when 'list'
        if nested
          "Array"
        else
          "Array<#{ruby_input_type(shape['member'], nested:true)}>"
        end
      when 'long' then 'Integer'
      when 'map'
        if nested
          "Hash"
        else
          "Hash<String,#{ruby_input_type(shape['value'], nested:true)}>"
        end
      when 'string' then 'String'
      when 'structure' then "Types::#{shape_ref['shape']}"
      when 'timestamp' then 'Time,DateTime,Date,Integer,String'
      else
        raise "unhandled type #{shape.type}.inspect"
      end
    end

    def ruby_type(shape_ref)
      shape = @api['shapes'][shape_ref['shape']]
      case shape['type']
      when 'blob' then streaming?(shape_ref, shape) ? 'IO' : 'String'
      when 'boolean' then 'Boolean'
      when 'byte' then 'Integer<byte>'
      when 'character' then 'String<character>'
      when 'double' then 'Float'
      when 'float' then 'Float'
      when 'integer' then 'Integer'
      when 'list' then "Array<#{ruby_type(shape['member'])}>"
      when 'long' then 'Integer'
      when 'map' then "Hash<String,#{ruby_type(shape['value'])}>"
      when 'string' then 'String'
      when 'structure' then "Types::#{shape_ref['shape']}"
      when 'timestamp' then 'Time'
      else
        raise "unhandled type #{shape['type'].inspect}"
      end
    end

    def streaming?(ref, shape)
      ref['streaming'] || shape['streaming']
    end

    # @option options [Integer] :line_width (70)
    def documentation(ref_or_shape, options = {})
      line_width = options.fetch(:line_width, 70)
      shape = ref_or_shape.key?('type') ? ref_or_shape : shape(ref_or_shape)
      docstring = ref_or_shape['documentation'] || shape['documentation'] || ''

      # append boilerplate idempotency docs
      if ref_or_shape['idempotencyToken']
        docstring = "#{docstring}<p>**A suitable default value is "
        docstring += "auto-generated.** You should normally "
        docstring += "not need to pass this option.</p>"
        docstring = docstring.strip
      end

      docstring == '' ? docstring : markdown(docstring, line_width:line_width)
    end

    def member_shape(shape_name, member_name)
      shape = @api['shapes'][shape_name]
      member_ref = shape['members'][member_name]
      shape(member_ref)
    end

    def upcase_first(name)
      if name[0] =~ /[a-z]/
        name.size == 1 ? name.upcase : name[0].upcase + name[1..-1]
      else
        name
      end
    end

    def downcase_first(name)
      if name[0] =~/[A-Z]/
        name.size == 1 ? name.downcase : name[0].downcase + name[1..-1]
      else
        name
      end
    end

    def lstrip_prefix(name)
      name.start_with?("__") ? name[2..-1] : name
    end

    def apig_prefix(name)
      "__" << name
    end

    def shape(ref)
      if ref.nil?
        nil
      else
        shape = @api['shapes'][ref['shape']]
        raise ArgumentError, "no such shape `#{ref['shape']}'" unless shape
        shape
      end
    end

    # @param [String<HTML>] html
    # @option options [Integer] :line_width (70)
    def markdown(html, options = {})
      Docstring.html_to_markdown(html, options)
    end

    def operation_streaming?(operation, api)
      return unless operation.key? 'output'
      output = operation['output']['shape']
      if api['shapes'][output].key? 'payload'
        output_shape = api['shapes'][output]
        payload = output_shape['payload']
        if output_shape.key? 'members'
          payload_ref = output_shape['members'][payload]
        elsif output_shape.key? 'member'
          payload_ref = output_shape['member'][payload]
        end
        Api.streaming?(payload_ref, api)
      end
    end

    def operation_eventstreaming?(operation, api)
      !!eventstream_input?(operation, api) ||
        !!eventstream_output?(operation, api)
    end

    def eventstream_output?(operation, api)
      return false unless operation.key? 'output'
      output_shape = api['shapes'][operation['output']['shape']]
      return false unless output_shape.key? 'members'
      output_shape['members'].each do |name, ref|
        return ref['shape'] if Api.eventstream?(ref, api)
      end
      return false
    end

    def eventstream_input?(operation, api)
      return false unless operation.key? 'input'
      input_shape = api['shapes'][operation['input']['shape']]
      return false unless input_shape.key? 'members'
      input_shape['members'].each do |name, ref|
        return ref['shape'] if Api.eventstream?(ref, api)
      end
      return false
    end

    def deep_copy(obj)
      case obj
      when nil then nil
      when true then true
      when false then false
      when Hash then obj.inject({}) { |h,(k,v)| h[deep_copy(k)] = deep_copy(v); h }
      when Array then obj.map { |v| deep_copy(v) }
      else
        if obj.respond_to?(:dup)
          obj.dup
        elsif obj.respond_to?(:clone)
          obj.clone
        else
          obj
        end
      end
    end

    def wrap_string(str, width, indent = '')
      str.gsub(/(.{1,#{width}})(\s+|\Z)/, "#{indent}\\1\n").chomp
    end

    module_function :deep_copy, :operation_streaming?, :downcase_first, :wrap_string, :apig_prefix,
      :eventstream_output?, :eventstream_input?, :operation_eventstreaming?

  end
end
