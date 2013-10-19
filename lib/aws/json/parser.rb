require 'multi_json'
require 'base64'

module Aws
  module Json
    class Parser

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<JSON>] json
      # @return [Hash]
      def parse(rules, json)
        json = '{}' if json == ''
        structure(rules, MultiJson.load(json, max_nesting: false))
      end

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<JSON>] json
      # @return [Hash]
      def self.parse(rules, json)
        new.parse(rules, json)
      end

      private

      def structure(shape, values)
        data = Structure.new(shape.members.keys)
        values.each do |key, value|
          if member_shape = shape.serialized_members[key]
            data[member_shape.member_name] = member(member_shape, value)
          end
        end
        data
      end

      def list(shape, values)
        values.map { |value| member(shape.members, value) }
      end

      def map(shape, values)
        data = {}
        values.each do |key, value|
          data[key] = member(shape.members, value)
        end
        data
      end

      def member(shape, value)
        return nil if value.nil?
        case shape
        when StructureShape then structure(shape, value)
        when ListShape then list(shape, value)
        when MapShape then map(shape, value)
        when TimestampShape then time(value)
        when BlobShape then Base64.decode64(value)
        else value
        end
      end

      def time(value)
        value.is_a?(Numeric) ? Time.at(value) : Time.parse(value)
      end

    end
  end
end
