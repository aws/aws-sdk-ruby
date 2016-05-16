require 'kramdown'
require 'set'

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

    def ruby_input_type(shape_ref, nested:false)
      shape = @api['shapes'][shape_ref['shape']]
      case shape['type']
      when 'blob' then 'String, IO'
      when 'byte' then 'Integer'
      when 'boolean' then 'Boolean'
      when 'character' then 'String'
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
      when 'byte' then 'Integer'
      when 'boolean' then 'Boolean'
      when 'character' then 'String'
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

    def documentation(ref_or_shape, line_width:70)
      shape = ref_or_shape.key?('type') ? ref_or_shape : shape(ref_or_shape)
      docstring = ref_or_shape['documentation'] || shape['documentation']
      if docstring
        markdown(docstring, line_width:line_width)
      else
        ''
      end
    end

    def member_shape(shape_name, member_name)
      shape = @api['shapes'][shape_name]
      member_ref = shape['members'][member_name]
      shape(member_ref)
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

    def markdown(html, line_width: 70)
      if html
        html = "<p>#{html}</p>" unless html.match(/<\w+>/)
        Kramdown::Document.new(html, input: 'html', line_width: line_width).
          to_kramdown.
          gsub(/\{(\S+)\}/, '`{\1}`').
          strip
      end
    end

    # Given a shape reference, this function returns a Set of all
    # of the recursive shapes found in tree.
    def compute_recursive_shapes(ref, stack = [], recursive = Set.new)
      if ref && !stack.include?(ref['shape'])
        stack.push(ref['shape'])
        s = shape(ref)
        case s['type']
        when 'structure'
          s['members'].each_pair do |_, member_ref|
            compute_recursive_shapes(member_ref, stack, recursive)
          end
        when 'list'
          compute_recursive_shapes(s['member'], stack, recursive)
        when 'map'
          compute_recursive_shapes(s['value'], stack, recursive)
        end
        stack.pop
      elsif ref
        recursive << ref.shape
      end
      recursive
    end

  end
end
