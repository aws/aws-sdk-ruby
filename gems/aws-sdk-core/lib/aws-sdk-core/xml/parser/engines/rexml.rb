# frozen_string_literal: true

use_system_rexml = ((RUBY_VERSION <=> "2.0.0") < 0)
if use_system_rexml
  require "rbconfig"
  $LOAD_PATH.unshift(RbConfig::CONFIG["rubylibdir"])
end

require 'rexml/document'
require 'rexml/streamlistener'

$LOAD_PATH.shift if use_system_rexml

module Aws
  module Xml
    class Parser
      class RexmlEngine

        include REXML::StreamListener

        def initialize(stack)
          @stack = stack
          @depth = 0
        end

        def parse(xml)
          begin
            mutable_xml = xml.dup # REXML only accepts mutable string
            source = REXML::Source.new(mutable_xml)
            REXML::Parsers::StreamParser.new(source, self).parse
          rescue REXML::ParseException => error
            @stack.error(error.message)
          end
        end

        def tag_start(name, attrs)
          @depth += 1
          @stack.start_element(name)
          attrs.each do |attr|
            @stack.attr(*attr)
          end
        end

        def text(value)
          @stack.text(value) if @depth > 0
        end

        def tag_end(name)
          @stack.end_element
          @depth -= 1
        end

      end
    end
  end
end
