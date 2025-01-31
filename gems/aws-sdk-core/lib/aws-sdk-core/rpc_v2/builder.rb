# frozen_string_literal: true

require 'base64'

module Aws
  module RpcV2
    class Builder
      include Seahorse::Model::Shapes

      def initialize(rules, _options = {})
        @rules = rules
      end

      def serialize(params)
        # If the input shape is empty, do not set a body. This is
        # different than if the input shape is a structure with no members.
        return nil if @rules.shape.struct_class == EmptyStructure

        RpcV2.encode(format(@rules, params))
      end

      private

      def structure(ref, values)
        shape = ref.shape
        values.each_pair.with_object({}) do |(key, value), data|
          if shape.member?(key) && !value.nil?
            member_ref = shape.member(key)
            member_name = member_ref.location_name || key
            data[member_name] = format(member_ref, value)
          end
        end
      end

      def list(ref, values)
        member_ref = ref.shape.member
        values.collect { |value| format(member_ref, value) }
      end

      def map(ref, values)
        value_ref = ref.shape.value
        values.each.with_object({}) do |(key, value), data|
          data[key] = format(value_ref, value)
        end
      end

      def blob(value)
        (String === value ? value : value.read).force_encoding(Encoding::BINARY)
      end

      def format(ref, value)
        case ref.shape
        when StructureShape then structure(ref, value)
        when ListShape      then list(ref, value)
        when MapShape       then map(ref, value)
        when BlobShape      then blob(value)
        else value
        end
      end
    end

    class OnePassBuilder
      include Seahorse::Model::Shapes

      def initialize(rules, _options = {})
        @rules = rules
        # TODO: This does not follow the engine pattern and uses our low level encoder directly
        @encoder = Cbor::Encoder.new
      end

      def serialize(params)
        # If the input shape is empty, do not set a body. This is
        # different than if the input shape is a structure with no members.
        return nil if @rules.shape.struct_class == EmptyStructure

        structure(@rules, params)

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
            member_value(member_ref, value)
          end
        end
        @encoder.end_indefinite_collection
      end

      def member_value(ref, value)
        case ref.shape
        when StructureShape then structure(ref, value)
        when UnionShape then structure(ref, value)
        when ListShape then list(ref, value)
        when MapShape then map(ref, value)
        when BlobShape then blob(value)
        when BooleanShape then @encoder.add_boolean(value)
        when FloatShape then @encoder.add_auto_float(value)
        when IntegerShape then @encoder.add_auto_integer(value)
        when StringShape then @encoder.add_string(value)
        when TimestampShape then @encoder.add_time(value)
        end
      end

      def list(ref, values)
        member_ref = ref.shape.member
        @encoder.start_array(values.size)
        values.each do |value|
          member_value(member_ref, value)
        end
      end

      def map(ref, values)
        value_ref = ref.shape.value
        @encoder.start_map(values.size)
        values.each do |key, value|
          @encoder.add_string(key) # TODO: Handle non string keys
          member_value(value_ref, value)
        end
      end

      def blob(value)
        bytes = (String === value ? value : value.read).force_encoding(Encoding::BINARY)
        @encoder.add_byte_string(bytes)
      end
    end
  end
end
