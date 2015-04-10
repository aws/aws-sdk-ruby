require 'libxml'

module Aws
  module Xml
    class Parser
      class LibxmlEngine

        include LibXML::XML::SaxParser::Callbacks

        def initialize(stack)
          @stack = stack
        end

        def parse(xml)
          parser = ::LibXML::XML::SaxParser.string(xml)
          parser.callbacks = self
          parser.parse
        end

        def on_start_element_ns(element_name, attributes, *ignored)
          @stack.start_element(element_name)
          attributes.each do |attr_name, attr_value|
            @stack.attr(attr_name, attr_value)
          end
        end

        def on_end_element_ns(*ignored)
          @stack.end_element
        end

        def on_characters(chars)
          @stack.text(chars)
        end

        def on_error(msg)
          @stack.error(msg)
        end

      end
    end
  end
end
