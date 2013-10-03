require 'multi_json'
require 'base64'

module Aws
  module Json
    class Parser

      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [String<JSON>] json
      # @param [Hash] target (nil)
      # @return [Hash]
      def parse(json, target = nil)
        json = '{}' if json == ''
        structure(@rules, MultiJson.load(json, max_nesting: false), target)
      end

      # @param [Seahorse::Model::Shapes::OutputShape] rules
      # @param [String<JSON>] json
      # @param [Hash] target (nil)
      # @return [Hash]
      def self.parse(rules, json, target = nil)
        new(rules.payload_member).parse(json, target)
      end

      private

      def structure(shape, values, target = nil)
        target ||= Structure.new(shape.members.keys)
        values.each do |key, value|
          if member_shape = shape.serialized_members[key]
            target[member_shape.member_name] = member(member_shape, value)
          end
        end
        target
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
