# frozen_string_literal: true

require 'time'

module Aws
  module RpcV2
    # Fast path: definite-length maps and arrays are read straight from the decoder into structs, lists and
    # hashes. Anything else goes through the original decode-then-walk code, so behavior is unchanged.
    class Parser
      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, query_compatible: false)
        @rules = rules
        @query_compatible = query_compatible
      end

      def parse(cbor, target = nil)
        return {} if cbor.empty?
        return parse_ref(@rules, RpcV2.decode(cbor), target) unless RpcV2.engine == CborEngine

        decoder = Cbor::Decoder.new(cbor.force_encoding(Encoding::BINARY))
        decoder.finish(read(decoder, @rules, target))
      end

      private

      def read(decoder, ref, target = nil)
        case ref.shape
        when StructureShape
          return read_fallback(decoder, ref, target) unless decoder.peek_type == :map

          decoder.nest { ref.shape.union ? read_union(decoder, ref, target) : read_structure(decoder, ref, target) }
        when ListShape
          return read_fallback(decoder, ref, target) unless target.nil? && decoder.peek_type == :array

          decoder.nest { read_list(decoder, ref) }
        when MapShape
          return read_fallback(decoder, ref, target) unless target.nil? && decoder.peek_type == :map

          decoder.nest { read_map(decoder, ref) }
        else
          decoder.decode_item # scalars: same as the original decode
        end
      end

      # Original behavior: decode the item generically, then walk it.
      def read_fallback(decoder, ref, target)
        parse_ref(ref, decoder.decode_item, target)
      end

      def read_structure(decoder, ref, target)
        shape = ref.shape
        target ||= shape.struct_class.new
        lut = lookup_table(shape)
        decoder.read_map.times do
          key = decoder.read_string
          if (pair = lut[key])
            target[pair[0]] = read(decoder, pair[1])
          else
            decoder.decode_item
          end
        end
        apply_query_compatible(shape, target) if @query_compatible
        target
      end

      # Builds the member subclass directly for the normal case: one known member with a non-nil value.
      # Anything else (empty, unknown key, __type, null value, several keys) is collected and handed to the
      # original #structure, so it returns or raises exactly as before.
      def read_union(decoder, ref, target)
        count = decoder.read_map
        values = {}
        if target.nil? && count == 1
          key = decoder.read_string
          if (pair = lookup_table(ref.shape)[key])
            value = read(decoder, pair[1])
            return build_union(ref.shape, pair[0], value) unless value.nil?
          else
            value = decoder.decode_item
          end
          values[key] = value
          count = 0
        end
        count.times { values[decoder.read_string] = decoder.decode_item }
        structure(ref, values, target)
      end

      def build_union(shape, member, value)
        subclass = shape.member_subclass(member).new
        subclass[member] = value
        subclass
      end

      def read_list(decoder, ref)
        member_ref = ref.shape.member
        count = decoder.read_array
        list = Array.new(count)
        count.times { |i| list[i] = read(decoder, member_ref) }
        list
      end

      def read_map(decoder, ref)
        value_ref = ref.shape.value
        map = {}
        decoder.read_map.times do
          key = decoder.read_string
          value = read(decoder, value_ref)
          map[key] = value unless value.nil?
        end
        map
      end

      # Wire key => [member_name, member_ref], cached on the shape.
      def lookup_table(shape)
        shape.instance_variable_get(:@rpc_v2_lut) ||
          shape.instance_variable_set(:@rpc_v2_lut, build_lookup_table(shape))
      end

      def build_lookup_table(shape)
        table = {}
        shape.members.each do |name, member_ref|
          table[member_ref.location_name || name.to_s] = [name, member_ref]
        end
        table
      end

      def structure(ref, values, target = nil)
        shape = ref.shape
        target = ref.shape.struct_class.new if target.nil?
        values.each do |key, value|
          member_name, member_ref = shape.member_by_location_name(key)
          if member_ref
            target[member_name] = parse_ref(member_ref, value)
          elsif shape.union && key != '__type'
            target[:unknown] = { 'name' => key, 'value' => value }
          end
        end
        apply_query_compatible(shape, target) if @query_compatible

        if shape.union
          # convert to subclass
          member_subclass = shape.member_subclass(target.member).new
          member_subclass[target.member] = target.value
          target = member_subclass
        end
        target
      end

      # In services that were previously Query/XML, members that were
      # "flattened" defaulted to empty lists. In JSON, these values are nil,
      # which is backwards incompatible. To preserve backwards compatibility,
      # we set a default value of [] for these members.
      def apply_query_compatible(shape, target)
        shape.members.each do |member_name, member_target|
          next unless target[member_name].nil?

          if flattened_list?(member_target.shape)
            target[member_name] = []
          elsif flattened_map?(member_target.shape)
            target[member_name] = {}
          end
        end
      end

      def list(ref, values, target = nil)
        target = [] if target.nil?
        values.each do |value|
          target << parse_ref(ref.shape.member, value)
        end
        target
      end

      def map(ref, values, target = nil)
        target = {} if target.nil?
        values.each do |key, value|
          target[key] = parse_ref(ref.shape.value, value) unless value.nil?
        end
        target
      end

      def parse_ref(ref, value, target = nil)
        if value.nil?
          nil
        else
          case ref.shape
          when StructureShape then structure(ref, value, target)
          when ListShape then list(ref, value, target)
          when MapShape then map(ref, value, target)
          else value
          end
        end
      end

      def flattened_list?(shape)
        shape.is_a?(ListShape) && shape.flattened
      end

      def flattened_map?(shape)
        shape.is_a?(MapShape) && shape.flattened
      end
    end
  end
end
