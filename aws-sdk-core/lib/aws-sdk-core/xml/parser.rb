module Aws
  module Xml

    # A SAX-style XML parser that uses a shape context to handle types.
    class Parser

      autoload :Stack, 'aws-sdk-core/xml/parser/stack'
      autoload :Frame, 'aws-sdk-core/xml/parser/frame'
      autoload :ParsingError, 'aws-sdk-core/xml/parser/parsing_error'

      autoload :LibxmlEngine, 'aws-sdk-core/xml/parser/engines/libxml'
      autoload :NokogiriEngine, 'aws-sdk-core/xml/parser/engines/nokogiri'
      autoload :OxEngine, 'aws-sdk-core/xml/parser/engines/ox'
      autoload :RexmlEngine, 'aws-sdk-core/xml/parser/engines/rexml'

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, options = {})
        @rules = rules
        @engine = options[:engine] || self.class.engine
      end

      # @param [String] xml An XML document string to parse.
      # @param [Structure] target (nil)
      # @return [Structure]
      def parse(xml, target = nil)
        xml = '<xml/>' if xml.nil? or xml.empty?
        stack = Stack.new(@rules, target)
        @engine.new(stack).parse(xml.to_s)
        stack.result
      end

      class << self

        # @param [Symbol,Class] engine
        #   Must be one of the following values:
        #
        #   * :ox
        #   * :libxml
        #   * :nokogiri
        #   * :rexml
        #
        def engine= engine
          @engine = Class === engine ? engine : load_engine(engine)
        end

        # @return [Class] Returns the default parsing engine.
        #   One of:
        #
        #   * {OxEngine}
        #   * {LibxmlEngine}
        #   * {NokogiriEngine}
        #   * {RexmlEngine}
        #
        def engine
          @engine
        end

        private

        def load_engine(name)
          require "aws-sdk-core/xml/parser/engines/#{name}"
          const_name = name[0].upcase + name[1..-1] + 'Engine'
          const_get(const_name)
        end

        def try_load_engine(name)
          load_engine(name)
        rescue LoadError
          false
        end

      end

      self.engine = [:ox, :libxml, :nokogiri, :rexml].find do |name|
        try_load_engine(name)
      end

    end
  end
end
