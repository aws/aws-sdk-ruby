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
          #       [member_ref1, 123],
          #       [member_ref2, "text"]
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
            params.map do |(member_ref, param_value)|
              build_part(member_ref, param_value, query_keys)
            end.reject { |p| p.nil? || p.empty? }.join('&')
          end

          private

          def query_keys(params)
            keys = Set.new
            params.each do |(member_ref, _)|
              name = member_ref.traits['smithy.api#httpQuery'] || member_ref.member_name
              keys << name unless member_ref.shape.is_a?(MapShape)
            end
            keys
          end

          def build_part(member_ref, param_value, query_keys)
            name = member_ref.traits['smithy.api#httpQuery'] || member_ref.member_name
            case member_ref.shape
            # supported scalar types
            when *SUPPORTED_TYPES
              "#{name}=#{query_value(member_ref, param_value)}"
            when ListShape
              generate_query_list(name, member_ref, param_value)
            when MapShape
              generate_query_map(member_ref, param_value, query_keys)
            else
              raise NotImplementedError
            end
          end

          def timestamp(ref, value)
            trait = 'smithy.api#timestampFormat'
            case ref.traits[trait] || ref.shape.traits[trait]
            when 'epoch-seconds' then value.to_i
            when 'http-date' then value.utc.httpdate
            else
              # default to date-time
              value.utc.iso8601
            end
          end

          def query_value(member_ref, value)
            shape = member_ref.shape
            case shape
            when TimestampShape
              escape(timestamp(member_ref, value))
            when *SUPPORTED_TYPES
              escape(value.to_s)
            else
              raise NotImplementedError
            end
          end

          def generate_query_list(name, member_ref, values)
            values.map do |value|
              "#{name}=#{query_value(member_ref.shape.member, value)}"
            end
          end

          def generate_query_map(member_ref, value, query_keys)
            case member_ref.shape.value.shape
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
