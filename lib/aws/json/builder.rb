require 'multi_json'
require 'base64'

module Aws
  module Json
    class Builder

      include Seahorse::Model::Shapes
      include TimestampFormatter

      # @param [Seahorse::Model::Shapes::Shape] rules
      def initialize(rules)
        @rules = rules
      end

      # @param [Hash] params
      # @return [Hash]
      def build(params)
        structure(@rules, params)
      end

      # @param [Hash] params
      # @return [String<JSON>]
      def to_json(params)
        MultiJson.dump(build(params))
      end

      class << self

        # @param [Seahorse::Model::Shapes::Shape] rules
        # @param [Hash] params
        # @return [String<JSON>]
        def to_json(rules, params)
          new(rules).to_json(params)
        end
        alias build  to_json

      end

      private

      def structure(shape, values)
        data = {}
        values.each do |key, value|
          unless value.nil?
            if member_shape = shape.members[key]
              data[member_shape.serialized_name] = member(member_shape, value)
            end
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
        case shape
        when StructureShape then structure(shape, value)
        when ListShape then list(shape, value)
        when MapShape then map(shape, value)
        when TimestampShape then timestamp(shape, value.utc)
        when BlobShape then Base64.strict_encode64(value)
        else value
        end
      end

    end
  end
end
