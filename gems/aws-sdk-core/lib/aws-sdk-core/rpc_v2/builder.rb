# frozen_string_literal: true

require 'base64'

module Aws
  module RpcV2
    # Fast path: params whose Ruby types match their shapes are written straight into one Encoder, using a
    # per-shape plan (encoded member keys and writer kinds) cached on the shape. Anything else goes through the
    # original format-then-encode code, so output and errors are unchanged.
    class Builder
      include Seahorse::Model::Shapes

      def initialize(rules, _options = {})
        @rules = rules
      end

      def serialize(params)
        # If the input shape is empty, do not set a body. This is
        # different than if the input shape is a structure with no members.
        return nil if @rules.shape.struct_class == EmptyStructure
        return RpcV2.encode(format(@rules, params)) unless RpcV2.engine == CborEngine

        begin
          encoder = Cbor::Encoder.new
          write(encoder, kind_of(@rules.shape), @rules, params)
          encoder.bytes
        rescue Fallback
          RpcV2.encode(format(@rules, params))
        rescue StandardError => e
          raise if defined?(::Timeout::Error) && e.is_a?(::Timeout::Error) # raised into the thread by timeout < 0.4

          # Invalid params: #format formats all params before encoding and merges :name with "name", so its
          # result or error applies. The fast path has no side effects.
          RpcV2.encode(format(@rules, params))
        end
      end

      private

      # Raised before the fast path reads an IO or iterates a list or map that isn't an Array or Hash.
      class Fallback < StandardError; end
      private_constant :Fallback

      # Writes value with the writer kind cached for its shape.
      def write(encoder, kind, ref, value)
        case kind
        when :structure then write_structure(encoder, ref, value)
        when :string
          return encoder.add(value) unless value.is_a?(String) && value.encoding != Encoding::BINARY

          encoder.add_string(value)
        when :list
          raise Fallback unless value.is_a?(Array)

          write_list(encoder, ref, value)
        when :map
          raise Fallback unless value.is_a?(Hash)

          write_map(encoder, ref, value)
        when :integer
          value.is_a?(Integer) ? encoder.add_auto_integer(value) : encoder.add(value)
        when :float
          value.is_a?(Float) ? encoder.add_auto_float(value) : encoder.add(value)
        when :boolean
          value == true || value == false ? encoder.add_boolean(value) : encoder.add(value)
        when :timestamp
          value.is_a?(Time) ? encoder.add_time(value) : encoder.add(value)
        when :blob
          raise Fallback unless value.is_a?(String)

          encoder.add_byte_string(blob(value))
        else encoder.add(value)
        end
      end

      def kind_of(shape)
        case shape
        when StructureShape then :structure
        when ListShape then :list
        when MapShape then :map
        when BlobShape then :blob
        when StringShape then :string
        when IntegerShape then :integer
        when FloatShape then :float
        when BooleanShape then :boolean
        when TimestampShape then :timestamp
        else :other
        end
      end

      # Present, non-nil members as a definite-length map, in params order. Values without #each_pair raise
      # NoMethodError, handled in #serialize.
      def write_structure(encoder, ref, values)
        shape = ref.shape
        table = member_table(shape)
        encoder.add_counted_map do
          count = 0
          values.each_pair do |key, value|
            if key.is_a?(Symbol)
              next if value.nil? || !(entry = table[key])
            else
              # member? first, like #structure (key.to_sym raises for e.g. Integer keys).
              next unless shape.member?(key) && !value.nil?

              # #structure merges :name and "name" into one entry.
              raise Fallback if values.compare_by_identity? || values.key?(key.to_sym)

              entry = table[key.to_sym]
            end
            encoder.add_encoded(entry[0])
            write(encoder, entry[2], entry[1], value)
            count += 1
          end
          count
        end
      end

      def write_list(encoder, ref, values)
        member_ref, kind = container_plan(ref.shape, :member)
        encoder.start_array(values.size)
        values.each { |value| write(encoder, kind, member_ref, value) }
      end

      def write_map(encoder, ref, values)
        value_ref, kind = container_plan(ref.shape, :value)
        encoder.start_map(values.size)
        values.each do |key, value|
          if key.is_a?(String) && key.encoding != Encoding::BINARY
            encoder.add_string(key)
          else
            encoder.add(key)
          end
          write(encoder, kind, value_ref, value)
        end
      end

      # Member name => [encoded wire key, member_ref, writer kind], cached on the shape.
      def member_table(shape)
        shape.instance_variable_get(:@rpc_v2_members) ||
          shape.instance_variable_set(:@rpc_v2_members, build_member_table(shape))
      end

      def build_member_table(shape)
        shape.members.to_h do |name, member_ref|
          key_bytes = Cbor::Encoder.new.add(member_ref.location_name || name).bytes.dup.freeze
          [name, [key_bytes, member_ref, kind_of(member_ref.shape)].freeze]
        end.freeze
      end

      # [member_or_value_ref, writer kind] for a list or map shape, cached on the shape.
      def container_plan(shape, part)
        shape.instance_variable_get(:@rpc_v2_plan) ||
          shape.instance_variable_set(:@rpc_v2_plan, [(ref = shape.send(part)), kind_of(ref.shape)].freeze)
      end

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
  end
end
