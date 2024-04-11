# frozen_string_literal: true

require 'base64'

module Aws
  module RpcV2
    class Builder
      include Seahorse::Model::Shapes

      def initialize(rules)
        @rules = rules
        @encoder = Cbor::Encoder.new
      end

      def serialize(params)
        encode(@rules, params)
        @encoder.bytes
      end

      private

      def structure(ref, values)
        shape = ref.shape
        @encoder.start_indefinite_map
        values.each_pair do |key, value|
          if shape.member?(key) && !value.nil?
            member_ref = shape.member(key)
            member_name = member_ref.location_name || key
            @encoder.add_string(member_name)
            encode(member_ref, value)
          end
        end
        @encoder.end_indefinite_collection
      end

      def list(ref, values)
        member_ref = ref.shape.member
        @encoder.start_array(values.size)
        values.each do |value|
          encode(member_ref, value)
        end
      end

      def map(ref, values)
        value_ref = ref.shape.value
        @encoder.start_map(values.size)
        values.each_pair do |key, value|
          @encoder.add_string(key)
          encode(value_ref, value)
        end
      end

      def encode(ref, value)
        case ref.shape
        when StructureShape then structure(ref, value)
        when ListShape      then list(ref, value)
        when MapShape       then map(ref, value)
        when TimestampShape then timestamp(ref, value)
        when BlobShape      then blob(value)
        when BooleanShape then @encoder.add_boolean(value)
        when StringShape then @encoder.add_string(value)
        when IntegerShape then @encoder.add_integer(value)
        when FloatShape then @encoder.add_float(value)
        else
          raise 'Unsupported shape'
        end
      end

      def blob(blob)
        @encoder.add_byte_string(String === blob ? blob : blob.read)
      end

      def timestamp(ref, value)
        # ignore all timestamp format traits
        @encoder.add_time(value)
      end
    end
  end
end
