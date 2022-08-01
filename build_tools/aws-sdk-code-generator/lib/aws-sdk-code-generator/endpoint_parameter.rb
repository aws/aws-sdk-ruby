# frozen_string_literal: true

module AwsSdkCodeGenerator
  class EndpointParameter

    def initialize(name, definition={})
      @name = name
      @type = definition['type']
      @built_in = definition['builtIn']
      @default = definition['default']
      @required = definition['required']
      if deprecated = definition['deprecated']
        @deprecated = DeprecatedObject.new(
          message: deprecated['message'],
          since: deprecated['since'])
      end
      @documentation = "#  @!attribute #{underscore_name}"
      if (definition['documentation'])
        @documentation += Docstring.block_comment(definition["documentation"], gap: "  ")
      end
      @documentation += "\n  #\n  #  @return [#{@type}]\n  #\n"
    end

    attr_reader :name, :documentation, :required, :default

    def has_default
      !@default.nil?
    end

    def underscore_name
      Underscore.underscore(name)
    end
  end

  DeprecatedObject = Struct.new(:message, :since, keyword_init: true)
end