require 'stringio'
require 'date'
require 'time'
require 'tempfile'
require 'thread'

module Aws
  # @api private
  class ParamConverter

    include Seahorse::Model::Shapes

    @mutex = Mutex.new
    @converters = Hash.new { |h,k| h[k] = {} }

    def initialize(rules)
      @rules = rules
    end

    # @param [Hash] params
    # @return [Hash]
    def convert(params)
      structure(@rules, params)
    end

    private

    def structure(ref, values)
      values = c(ref, values)
      if Struct === values || Hash === values
        values.each_pair do |k, v|
          unless v.nil?
            if ref.shape.member?(k)
              values[k] = member(ref.shape.member(k), v)
            end
          end
        end
      end
      values
    end

    def list(ref, values)
      values = c(ref, values)
      if values.is_a?(Array)
        values.map { |v| member(ref.shape.member, v) }
      else
        values
      end
    end

    def map(ref, values)
      values = c(ref, values)
      if values.is_a?(Hash)
        values.each.with_object({}) do |(key, value), hash|
          hash[member(ref.shape.key, key)] = member(ref.shape.value, value)
        end
      else
        values
      end
    end

    def member(ref, value)
      case ref.shape
      when StructureShape then structure(ref, value)
      when ListShape then list(ref, value)
      when MapShape then map(ref, value)
      else c(ref, value)
      end
    end

    def c(ref, value)
      self.class.c(ref.shape.class, value)
    end

    class << self

      def convert(shape, params)
        new(shape).convert(params)
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
          @mutex.synchronize {
            unless @converters[shape_class].key?(value.class)
              @converters[shape_class][value.class] = find(shape_class, value)
            end
          }
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
    add(StructureShape, Struct)

    add(MapShape, Hash) { |h| h.dup }
    add(MapShape, Struct) do |s|
      s.members.each.with_object({}) {|k,h| h[k] = s[k] }
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
    add(TimestampShape, Float) { |f| Time.at(f) }
    add(TimestampShape, String) do |str|
      begin
        Time.parse(str)
      rescue ArgumentError
        str
      end
    end

    add(BooleanShape, TrueClass)
    add(BooleanShape, FalseClass)
    add(BooleanShape, String) do |str|
      { 'true' => true, 'false' => false }[str]
    end

    add(BlobShape, IO)
    add(BlobShape, Tempfile)
    add(BlobShape, StringIO)
    add(BlobShape, String)

  end
end
