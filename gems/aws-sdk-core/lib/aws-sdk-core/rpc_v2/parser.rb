# frozen_string_literal: true

require 'time'

module Aws
  module RpcV2
    class PeekAndReadParser
      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, cbor)
        @rules = rules
        @decoder = Cbor::Decoder.new(cbor)
      end

      def parse(target = nil)
        parse_ref(@rules, target)
      end

      private

      def structure(ref, target = nil)
        shape = ref.shape
        target = ref.shape.struct_class.new if target.nil?

        type = @decoder.peek_type
        return unless  type == :map || type == :indefinite_map

        if type == :map
          @decoder.read_map.times do
            key = @decoder.read_string
            member_name, member_ref = shape.member_by_location_name(key)
            if member_ref
              target[member_name] = parse_ref(member_ref)
            elsif shape.union && key != '__type'
              target[:unknown] = { 'name' => key, 'value' => value }
            end
          end
        else # indefinite length
          @decoder.read_start_indefinite_map
          until @decoder.peek_type == :break_stop_code
            key = @decoder.read_string
            member_name, member_ref = shape.member_by_location_name(key)
            if member_ref
              target[member_name] = parse_ref(member_ref)
            elsif shape.union && key != '__type'
              target[:unknown] = { 'name' => key, 'value' => value }
            end
          end
          @decoder.read_end_indefinite_collection
        end

        if shape.union
          # convert to subclass
          member_subclass = shape.member_subclass(target.member).new
          member_subclass[target.member] = target.value
          target = member_subclass
        end
        target
      end

      def list(ref, target = nil)
        type = @decoder.peek_type
        return unless type == :array || :indefinite_array

        target = [] if target.nil?

        if type == :array
          @decoder.read_array.times do
            target << parse_ref(ref.shape.member)
          end
        else
          @decoder.read_start_indefinite_array
          until @decoder.peek_type == :break_stop_code
            target << parse_ref(ref.shape.member)
          end
          @decoder.read_end_indefinite_collection
        end
        target
      end

      def map(ref, target = nil)
        type = @decoder.peek_type
        return unless  type == :map || type == :indefinite_map

        target = {} if target.nil?

        if type == :map
          @decoder.read_map.times do
            key = @decoder.read_string
            target[key] = parse_ref(ref.shape.value)
          end
        else
          @decoder.read_start_indefinite_map
          until @decoder.peek_type == :break_stop_code
            key = @decoder.read_string
            target[key] = parse_ref(ref.shape.value)
          end
          @decoder.read_end_indefinite_collection
        end

        target
      end

      def parse_ref(ref, target = nil)
        if @decoder.peek_type == :nil
          return @decoder.read_nil
        end
        case ref.shape
        when StructureShape then structure(ref, target)
        when ListShape then list(ref, target)
        when MapShape then map(ref, target)
        when TimestampShape then time
        when BlobShape then @decoder.read_binary_string
        when BooleanShape then @decoder.read_boolean
        when StringShape then @decoder.read_string
        when IntegerShape then @decoder.read_integer
        when FloatShape then @decoder.read_float
        else
          raise 'Unsupported shape'
        end
      end

      # @param [String, Integer] value
      # @return [Time]
      def time
        raise ArgumentError, "Expected time" unless @decoder.peek_type == :tag
        tag = @decoder.read_tag
        raise ArgumentError, "Expected time" unless tag == Cbor::TAG_TYPE_EPOCH

        case @decoder.peek_type
        when :double; Time.at(@decoder.read_double)
        when :integer; Time.at(@decoder.read_integer / 1000.0 )
        else
          raise ArgumentError, "Invalid time, expected a double or integer"
        end
      end
    end

    class IntermediateHashParser
      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, cbor)
        @rules = rules
        @cbor = cbor
      end

      def parse(target = nil)
        parse_ref(@rules, Cbor.decode(@cbor), target)
      end

      private

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

        if shape.union
          # convert to subclass
          member_subclass = shape.member_subclass(target.member).new
          member_subclass[target.member] = target.value
          target = member_subclass
        end
        target
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
          target[key] = parse_ref(ref.shape.value, value)
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
    end

    class CallbackParser
      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, cbor)
        @rules = rules
        @decoder = Cbor::Decoder.new(cbor)
      end

      def parse(target = nil)
        parse_ref(@rules, target)
      end

      private

      def structure(ref, handler, ret_value, target = nil)
        shape = ref.shape
        target = ref.shape.struct_class.new if target.nil?
        ret_value[:value] = target

        handler[:map] = proc do |length|
          inner_handler = {
            string: proc do |key|
              member_name, member_ref = shape.member_by_location_name(key)
              if member_ref
                ret_value[:value][member_name] = parse_ref(member_ref)
              elsif shape.union && key != '__type'
                # TODO: this value will NOT WORK correctly
                ret_value[:value][:unknown] = { 'name' => key, 'value' => value }
              end
            end
          }
          length.times do
            @decoder.read_next_item(inner_handler)
          end
        end

        handler[:indefinite_map] = proc do
          ret_value[:break] = false
          inner_handler = {
            string: proc do |key|
              member_name, member_ref = shape.member_by_location_name(key)
              if member_ref
                ret_value[:value][member_name] = parse_ref(member_ref)
              elsif shape.union && key != '__type'
                # TODO: this value will NOT WORK correctly
                ret_value[:value][:unknown] = { 'name' => key, 'value' => value }
              end
            end,
            break_stop_code: proc { ret_value[:break] = true }
          }
          until ret_value[:break] do
            @decoder.read_next_item(inner_handler)
          end
        end

        if shape.union
          # convert to subclass
          member_subclass = shape.member_subclass(target.member).new
          member_subclass[target.member] = target.value
          target = member_subclass
        end
        target
      end

      def list(ref, handler, ret_value, target = nil)
        target = [] if target.nil?
        ret_value[:value] = target

        handler[:array] = proc do |length|
          length.times do
            ret_value[:value] << parse_ref(ref.shape.member)
          end
        end

        handler[:indefinite_array] = proc do
          ret_value[:break] = false
          inner_handler = {
            break_stop_code: proc { ret_value[:break] = true }
          }
          until ret_value[:break]
            ret_value[:value] << parse_ref(ref.shape.member, handler: inner_handler)
          end
        end
      end

      def map(ref, handler, ret_value, target = nil)
        target = {} if target.nil?
        ret_value[:value] = target

        handler[:map] = proc do |length|
          inner_handler = {
            string: proc do |key|
              ret_value[:value][key] = parse_ref(ref.shape.value)
            end
          }
          length.times do
            @decoder.read_next_item(inner_handler)
          end
        end

        handler[:indefinite_map] = proc do
          ret_value[:break] = false
          inner_handler = {
            string: proc do |key|
              ret_value[:value][key] = parse_ref(ref.shape.value)
            end,
            break_stop_code: proc { ret_value[:break] = true }
          }
          until ret_value[:break] do
            @decoder.read_next_item(inner_handler)
          end
        end
      end

      def parse_ref(ref, target = nil, handler: {})
        ret_value = {}
        handler = handler.dup
        handler[:nil] = proc { ret_value[:value] = nil }

        case ref.shape
        when StructureShape then structure(ref, handler, ret_value, target)
        when ListShape then list(ref, handler, ret_value, target)
        when MapShape then map(ref, handler, ret_value, target)
        when TimestampShape then time(handler, ret_value)
        when BlobShape then handler[:binary_string] = proc {|v| ret_value[:value] = v}
        when BooleanShape then handler[:boolean] = proc {|v| ret_value[:value] = v}
        when StringShape then handler[:string] = proc {|v| ret_value[:value] = v}
        when IntegerShape then handler[:integer] = proc {|v| ret_value[:value] = v}
        when FloatShape then handler[:float] = proc {|v| ret_value[:value] = v}
        else
          raise 'Unsupported shape'
        end

        @decoder.read_next_item(handler)
        ret_value[:value] # this should now be set
      end

      def time(handler, ret_value)
        handler[:tag] = proc do |tag|
          raise ArgumentError, "Expected time" unless tag == Cbor::TAG_TYPE_EPOCH
          inner_handler = {
            double: proc { |v| ret_value[:value] = Time.at(v) },
            integer: proc { |v| ret_value[:value] = Time.at(v / 1000.0) }
          }
          @decoder.read_next_item(inner_handler)
        end
      end
    end
  end
end
