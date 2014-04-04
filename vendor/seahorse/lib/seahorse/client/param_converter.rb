require 'stringio'
require 'date'
require 'time'
require 'tempfile'

module Seahorse
  module Client
    class ParamConverter

      include Model::Shapes

      @converters = Hash.new { |h,k| h[k] = {} }

      # @param [Model::Shapes::InputShape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [Hash]
      def convert(params)
        structure(@rules, params)
      end

      private

      def structure(rules, values)
        values = c(rules, values)
        if values.is_a?(Hash)
          values.each do |k, v|
            unless v.nil?
              if member_shape = rules.members[k]
                values[k] = member(member_shape, v)
              end
            end
          end
        end
        values
      end

      def list(rules, values)
        values = c(rules, values)
        if values.is_a?(Array)
          values.map { |v| c(rules.members, v) }
        else
          values
        end
      end

      def map(rules, values)
        values = c(rules, values)
        if values.is_a?(Hash)
          values.inject({}) do |hash, (k, v)|
            hash[c(rules.keys, k)] = c(rules.members, v)
            hash
          end
        else
          values
        end
      end

      def member(rules, value)
        case rules
        when StructureShape then structure(rules, value)
        when ListShape then list(rules, value)
        when MapShape then map(rules, value)
        else c(rules, value)
        end
      end

      def c(shape, value)
        self.class.c(shape.class, value)
      end

      class << self

        # @param [Model::Shapes::InputShape] rules
        # @param [Hash] params
        # @return [Hash]
        def convert(rules, params)
          new(rules).convert(params)
        end

        # Registers a new value converter.  Converters run in the context
        # of a shape and value class.
        #
        #     # add a converter that stringifies integers
        #     shape_class = Seahorse::Model::Shapes::StringShape
        #     ParamConverter.add(shape_class, Integer) { |i| i.to_s }
        #
        # @param [Class<Model::Shapes::Shape>] shape_class
        # @param [Class] value_class
        # @param [#call] converter (nil) An object that responds to `#call`
        #    accepting a single argument.  This function should perform
        #    the value conversion if possible, returning the result.
        #    If the conversion is not possible, the original value should
        #    be returned.
        # @return [void]
        def add(shape_class, value_class, converter = nil, &block)
          @converters[shape_class][value_class] = converter || block
        end

        # @api private
        def c(shape, value)
          if converter = converter_for(shape, value)
            converter.call(value)
          else
            value
          end
        end

        private

        def converter_for(shape_class, value)
          unless @converters[shape_class].key?(value.class)
            @converters[shape_class][value.class] = find(shape_class, value)
          end
          @converters[shape_class][value.class]
        end

        def find(shape_class, value)
          converter = nil
          each_base_class(shape_class) do |klass|
            @converters[klass].each do |value_class, block|
              if value_class === value
                converter = block
                break
              end
            end
            break if converter
          end
          converter
        end

        def each_base_class(shape_class, &block)
          shape_class.ancestors.each do |ancestor|
            yield(ancestor) if @converters.key?(ancestor)
          end
        end

      end

      add(StructureShape, Hash) { |h| h.dup }
      add(StructureShape, Struct) { |struct| struct.to_h }

      add(MapShape, Hash) { |h| h.dup }
      add(MapShape, Struct) do |s|
        s.members.inject({}) {|h,k| h[k] = s[k]; h }
      end

      add(ListShape, Array) { |a| a.dup }
      add(ListShape, Enumerable) { |value| value.to_a }

      add(StringShape, String)
      add(StringShape, Symbol) { |sym| sym.to_s }

      add(IntegerShape, Integer)
      add(IntegerShape, Float) { |f| f.to_i }
      add(IntegerShape, String) do |str|
        begin
          Integer(str)
        rescue ArgumentError
          str
        end
      end

      add(FloatShape, Float)
      add(FloatShape, Integer) { |i| i.to_f }
      add(FloatShape, String) do |str|
        begin
          Float(str)
        rescue ArgumentError
          str
        end
      end

      add(TimestampShape, Time)
      add(TimestampShape, Date) { |d| d.to_time }
      add(TimestampShape, DateTime) { |dt| dt.to_time }
      add(TimestampShape, Integer) { |i| Time.at(i) }
      add(TimestampShape, String) do |str|
        begin
          Time.parse(str)
        rescue ArgumentError
          str
        end
      end

      add(BooleanShape, TrueClass)
      add(BooleanShape, FalseClass)
      add(BooleanShape, String) { |str| { 'true' => true, 'false' => false }[str] }

      add(BlobShape, IO)
      add(BlobShape, Tempfile)
      add(BlobShape, StringIO)
      add(BlobShape, String)

    end
  end
end
