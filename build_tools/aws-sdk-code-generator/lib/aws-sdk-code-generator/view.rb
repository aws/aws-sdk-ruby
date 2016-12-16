require 'mustache'

module AwsSdkCodeGenerator
  class View < Mustache

    TEMPLATE_DIR = File.expand_path('../../../templates', __FILE__)

    def self.inherited(subclass)
      parts = subclass.name.split('::')
      parts.shift #=> remove AwsSdkCodeGenerator
      parts.shift #=> remove Views
      path = parts.map { |part| Underscore.underscore(part) }.join('/')
      subclass.template_path = TEMPLATE_DIR
      subclass.template_file = "#{TEMPLATE_DIR}/#{path}.mustache"
      subclass.raise_on_context_miss = true
    end

    # @param (see Underscore.underscore)
    # @option (see Underscore.underscore)
    # @return (see Underscore.underscore)
    def underscore(string)
      Underscore.underscore(string)
    end

    # @param (see Docstring.html_to_markdown)
    # @option (see Docstring.html_to_markdown)
    # @return (see Docstring.html_to_markdown)
    def html_to_markdown(html, options = {})
      Docstring.html_to_markdown(html, options)
    end

    # @param (see Docstring.block_comment)
    # @option (see Docstring.block_comment)
    # @return (see Docstring.block_comment)
    def block_comment(text, options = {})
      Docstring.block_comment(text, options = {})
    end

    # @param (see Docstring.join_docstrings)
    # @option (see Docstring.join_docstrings)
    # @return (see Docstring.join_docstrings)
    def join_docstrings(docs, options = {})
      Docstring.join_docstrings(docs, options)
    end

    # @param [String, Hash] shape_or_shape_ref
    #   Must be one of the following:
    #
    #   * `String` - A shape name
    #   * `Hash` - shape ref
    #   * `Hash` - shape
    #
    # @return [String<HTML>, nil]
    def docstring(shape_or_shape_ref)
      ref = nil
      shape = nil
      if String === shape_or_shape_ref
        shape = @service.api['shapes'][shape_or_shape_ref]
        ref = {}
      elsif shape_or_shape_ref['type']
        shape = shape_or_shape_ref
        ref = {}
      else
        shape = @service.api['shapes'][shape_or_shape_ref['shape']]
        ref = shape_or_shape_ref
      end
      ref['documentation'] || shape['documentation']
    end

    # @param [String] shape_name
    # @return [Hash]
    def shape(shape_name_or_shape_ref)
      if Hash === shape_name_or_shape_ref
        @service.api['shapes'].fetch(shape_name_or_shape_ref['shape'])
      else
        @service.api['shapes'].fetch(shape_name_or_shape_ref)
      end
    end

    def ruby_type(shape_ref)
      shape = @service.api['shapes'][shape_ref['shape']]
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

  end
end
