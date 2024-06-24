# frozen_string_literal: true

require 'time'

module Aws
  module RpcV2
    class Parser
      include Seahorse::Model::Shapes

      # @param [Seahorse::Model::ShapeRef] rules
      def initialize(rules, query_compatible: false)
        @rules = rules
        @query_compatible = query_compatible
      end

      def parse(cbor, target = nil)
        return {} if cbor.empty?

        parse_ref(@rules, Cbor.decode(cbor), target)
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
        # In services that were previously Query/XML, members that were
        # "flattened" defaulted to empty lists. In JSON, these values are nil,
        # which is backwards incompatible. To preserve backwards compatibility,
        # we set a default value of [] for these members.
        if @query_compatible
          ref.shape.members.each do |member_name, member_target|
            next unless target[member_name].nil?

            if flattened_list?(member_target.shape)
              target[member_name] = []
            elsif flattened_map?(member_target.shape)
              target[member_name] = {}
            end
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
    end
  end
end
