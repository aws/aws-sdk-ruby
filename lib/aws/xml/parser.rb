require 'multi_xml'
require 'time'
require 'base64'

module Aws
  module Xml
    # @api private
    class Parser

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<xml>] xml
      # @param [Hash] target (nil)
      # @return [Hash]
      def parse(rules, xml, target = nil)
        structure(rules, MultiXml.parse(xml).values.first || {}, target)
      end

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<xml>] xml
      # @param [Hash] target (nil)
      # @return [Hash]
      def self.parse(rules, xml, target = nil)
        new.parse(rules, xml, target)
      end

      private

      def structure(shape, hash, target = nil)
        target ||= Structure.new(shape.members.keys)
        shape.members.each do |member_name, member_shape|
          key = member_shape.serialized_name
          target[member_name] = member(member_shape, hash[key])
        end
        target
      end

      def list(shape, values)
        member_shape = shape.members
        unless flat?(shape)
          values = values[member_shape.serialized_name || 'member']
        end
        values = [values] unless values.is_a?(Array)
        values.map { |value| member(member_shape, value) }
      end

      def map(shape, entries)
        key_shape = shape.keys
        value_shape = shape.members
        data = {}
        entries = entries['entry'] unless flat?(shape)
        entries = [entries] unless entries.is_a?(Array)
        entries.each do |entry|
          key = entry[key_shape.serialized_name || 'key']
          value = entry[value_shape.serialized_name || 'value']
          data[member(key_shape, key)] = member(value_shape, value)
        end
        data
      end

      def member(shape, raw)
        if raw.nil?
          case shape
          when StructureShape, MapShape then {}
          when ListShape then []
          else nil
          end
        else
          case shape
          when StructureShape then structure(shape, raw)
          when ListShape then list(shape, raw)
          when MapShape then map(shape, raw)
          when BooleanShape then raw == 'true'
          when IntegerShape then raw.to_i
          when FloatShape then raw.to_f
          when TimestampShape then timestamp(raw)
          when BlobShape then Base64.decode64(raw)
          else raw
          end
        end
      end

      def timestamp(raw)
        case raw
        when nil then nil
        when /^\d+$/ then Time.at(raw.to_i)
        else
          begin
            Time.parse(raw)
          rescue ArgumentError
            raise "unhandled timestamp format `#{raw}'"
          end
        end
      end

      def flat?(shape)
        FlatListShape === shape || FlatMapShape === shape
      end

    end
  end
end
