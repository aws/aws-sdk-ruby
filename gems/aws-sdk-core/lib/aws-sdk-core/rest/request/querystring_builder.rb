# frozen_string_literal: true

require 'cgi'

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class QuerystringBuilder
          include Smithy::Schema::Shapes

          SUPPORTED_TYPES = [
            BooleanShape,
            EnumShape,
            FloatShape,
            IntegerShape,
            IntEnumShape,
            StringShape,
            TimestampShape
          ].freeze

          # Provide member shapes and param values:
          #
          #     [
          #       [member_shape1, 123],
          #       [member_shape2, "text"]
          #     ]
          #
          # Returns a querystring:
          #
          #   "Count=123&Words=text"
          #
          # @param [Array<Array<Smithy::Schema::Shapes::MemberShape, Object>>] params An array of
          #   member shapes and request parameter value pairs.
          #
          # @return [String] Returns a built querystring
          def build(params)
            # keys in query maps must NOT override other keys
            query_keys = query_keys(params)
            parts = params.map do |member_shape, param_value, query_name|
              build_part(member_shape, param_value, query_keys, query_name)
            end
            parts.reject { |p| p.nil? || p.empty? }.join('&')
          end

          private

          def query_keys(params)
            keys = Set.new
            params.each do |member_shape, _, query_name|
              name = query_name || member_shape.name
              keys << name unless member_shape.target.is_a?(MapShape)
            end
            keys
          end

          def build_part(member_shape, param_value, query_keys, query_name)
            name = query_name || member_shape.name
            target_shape = member_shape.target
            case target_shape
            # supported scalar types
            when *SUPPORTED_TYPES
              "#{name}=#{query_value(member_shape, param_value)}"
            when ListShape
              generate_query_list(name, member_shape, param_value)
            when MapShape
              generate_query_map(member_shape, param_value, query_keys)
            else
              raise NotImplementedError
            end
          end

          def timestamp(shape, value)
            trait = 'smithy.api#timestampFormat'
            format = shape.traits[trait] || shape.target.traits[trait] || 'date-time'
            Smithy::Schema::Utils.serialize_timestamp(value, format)
          end

          def query_value(member_shape, value)
            target_shape = member_shape.target
            case target_shape
            when TimestampShape
              escape(timestamp(member_shape, value))
            when *SUPPORTED_TYPES
              escape(value.to_s)
            else
              raise NotImplementedError
            end
          end

          def generate_query_list(name, member_shape, values)
            values.map do |value|
              "#{name}=#{query_value(member_shape.target.member, value)}"
            end
          end

          def generate_query_map(member_shape, value, query_keys)
            target_shape = member_shape.target.value.target
            case target_shape
            when StringShape
              query_map_of_string(value, query_keys)
            when ListShape
              query_map_of_string_list(value, query_keys)
            else
              msg = 'Only map of string and string list supported'
              raise NotImplementedError, msg
            end
          end

          def query_map_of_string(hash, query_keys)
            list = []
            hash.each_pair do |key, value|
              key = escape(key)
              list << "#{key}=#{escape(value)}" unless query_keys.include?(key)
            end
            list
          end

          def query_map_of_string_list(hash, query_keys)
            list = []
            hash.each_pair do |key, values|
              key = escape(key)
              values.each do |value|
                list << "#{key}=#{escape(value)}" unless query_keys.include?(key)
              end
            end
            list
          end

          def escape(string)
            CGI.escape(string.to_s.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end
        end
      end
    end
  end
end
