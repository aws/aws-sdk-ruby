require 'stringio'
require 'date'
require 'time'
require 'tempfile'
require 'thread'

module Seahorse
  module Client
    class ParamConverter

      @mutex = Mutex.new
      @converters = Hash.new { |h,k| h[k] = {} }

      # @param [Model::Shapes::Shape] shape
      def initialize(shape)
        @shape = shape
      end

      # @param [Hash] params
      # @return [Hash]
      def convert(params)
        structure(@shape, params)
      end

      private

      def structure(structure, values)
        values = c(structure, values)
        if values.is_a?(Hash)
          values.each do |k, v|
            unless v.nil?
              if structure.member?(k)
                values[k] = member(structure.member(k), v)
              end
            end
          end
        end
        values
      end

      def list(list, values)
        values = c(list, values)
        if values.is_a?(Array)
          values.map { |v| member(list.member, v) }
        else
          values
        end
      end

      def map(map, values)
        values = c(map, values)
        if values.is_a?(Hash)
          values.each.with_object({}) do |(key, value), hash|
            hash[member(map.key, key)] = member(map.value, value)
          end
        else
          values
        end
      end

      def member(shape, value)
        case shape
        when Model::Shapes::Structure then structure(shape, value)
        when Model::Shapes::List then list(shape, value)
        when Model::Shapes::Map then map(shape, value)
        else c(shape, value)
        end
      end

      def c(shape, value)
        self.class.c(shape.class, value)
      end

      class << self

        # @param [Model::Shapes::InputShape] shape
        # @param [Hash] params
        # @return [Hash]
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

      add(Model::Shapes::Structure, Hash) { |h| h.dup }
      add(Model::Shapes::Structure, Struct) do |s|
        s.members.each.with_object({}) {|k,h| h[k] = s[k] }
      end

      add(Model::Shapes::Map, Hash) { |h| h.dup }
      add(Model::Shapes::Map, Struct) do |s|
        s.members.each.with_object({}) {|k,h| h[k] = s[k] }
      end

      add(Model::Shapes::List, Array) { |a| a.dup }
      add(Model::Shapes::List, Enumerable) { |value| value.to_a }

      add(Model::Shapes::String, String)
      add(Model::Shapes::String, Symbol) { |sym| sym.to_s }

      add(Model::Shapes::Integer, Integer)
      add(Model::Shapes::Integer, Float) { |f| f.to_i }
      add(Model::Shapes::Integer, String) do |str|
        begin
          Integer(str)
        rescue ArgumentError
          str
        end
      end

      add(Model::Shapes::Float, Float)
      add(Model::Shapes::Float, Integer) { |i| i.to_f }
      add(Model::Shapes::Float, String) do |str|
        begin
          Float(str)
        rescue ArgumentError
          str
        end
      end

      add(Model::Shapes::Timestamp, Time)
      add(Model::Shapes::Timestamp, Date) { |d| d.to_time }
      add(Model::Shapes::Timestamp, DateTime) { |dt| dt.to_time }
      add(Model::Shapes::Timestamp, Integer) { |i| Time.at(i) }
      add(Model::Shapes::Timestamp, String) do |str|
        begin
          Time.parse(str)
        rescue ArgumentError
          str
        end
      end

      add(Model::Shapes::Boolean, TrueClass)
      add(Model::Shapes::Boolean, FalseClass)
      add(Model::Shapes::Boolean, String) do |str|
        { 'true' => true, 'false' => false }[str]
      end

      add(Model::Shapes::Blob, IO)
      add(Model::Shapes::Blob, Tempfile)
      add(Model::Shapes::Blob, StringIO)
      add(Model::Shapes::Blob, String) { |str| StringIO.new(str) }

    end
  end
end
