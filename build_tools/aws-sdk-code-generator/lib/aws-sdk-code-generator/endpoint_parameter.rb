# frozen_string_literal: true

module AwsSdkCodeGenerator
  class EndpointParameter

    def initialize(name, definition={})
      @name = name
      @type = definition['type']
      @built_in = definition['builtIn']
      @default = definition['default']
      @required = definition['required']
      @documentation = "# @!attribute #{underscore_name}\n"
      if (definition['documentation'])
        @documentation += "  #   #{definition["documentation"]}\n"
      end
      if deprecated = definition['deprecated']
        @documentation += "  #\n  #   @deprecated\n"
        if deprecated['message']
          @documentation += "  #     #{deprecated['message']}\n"
        end
        if deprecated['since']
          @documentation += "  #     Since: #{deprecated['since']}\n"
        end
      end
      @documentation += "  #\n  #   @return [#{@type}]\n  #"
    end

    attr_reader :name, :documentation, :required, :default

    def default?
      !@default.nil?
    end

    def boolean_default?
      default? && (@default == true || @default == false)
    end

    def underscore_name
      Underscore.underscore(name)
    end
  end
end
