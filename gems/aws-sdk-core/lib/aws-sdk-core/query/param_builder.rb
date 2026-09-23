# frozen_string_literal: true

require 'base64'

module Aws
  module Core
    module Query
      # @api private
      class ParamBuilder
        def initialize(options = {})
          @ec2 = options[:ec2] || false
        end

        def build(shape, params, result = nil)
          structure(shape, params, result, '')
        end

        private

        def build_shape(shape, value, result, prefix)
          case SCHEMA_EXTENSION.target_shape(shape)
          when SCHEMA_EXTENSION::SHAPE_BLOB then set(prefix, blob(value), result)
          when SCHEMA_EXTENSION::SHAPE_LIST then list(shape, value, result, prefix)
          when SCHEMA_EXTENSION::SHAPE_MAP then map(shape, value, result, prefix)
          when SCHEMA_EXTENSION::SHAPE_STRUCTURE then structure(shape, value, result, "#{prefix}.")
          when SCHEMA_EXTENSION::SHAPE_TIMESTAMP then set(prefix, timestamp(shape, value), result)
          else set(prefix, value.to_s, result)
          end
        end

        def blob(value)
          Base64.strict_encode64(value.respond_to?(:read) ? value.read : value)
        end

        def list(shape, values, result, prefix)
          if values.empty?
            return @ec2 ? nil : set(prefix, '', result)
          end

          member_shape, = SCHEMA_EXTENSION.list_member(shape.target)
          prefix = list_prefix(shape, member_shape, prefix)
          values.each.with_index do |value, n|
            build_shape(member_shape, value, result, "#{prefix}.#{n + 1}")
          end
        end

        def map(shape, values, result, prefix) # rubocop:disable Metrics/AbcSize
          raise NotImplementedError if @ec2

          key_member, = SCHEMA_EXTENSION.map_key_member(shape.target)
          value_member, = SCHEMA_EXTENSION.map_value_member(shape.target)
          prefix += '.entry' unless QueryExtension.flattened?(shape)
          key_name = "%s.%d.#{query_name(key_member)}"
          value_name = "%s.%d.#{query_name(value_member)}"
          values.each.with_index do |(key, value), n|
            build_shape(key_member, key, result, format(key_name, prefix, n + 1))
            build_shape(value_member, value, result, format(value_name, prefix, n + 1))
          end
        end

        def structure(shape, values, result, prefix)
          index = @ec2 ? QueryExtension.ec2_query_index(shape.target) : QueryExtension.query_index(shape.target)
          values.each_pair do |name, value|
            next if value.nil?

            entry = index[name]
            next unless entry

            wire_name, member_shape, = entry
            build_shape(member_shape, value, result, prefix + wire_name)
          end
        end

        def timestamp(shape, value)
          format = QueryExtension.timestamp_format(shape)
          format = 'date-time' if format == :default

          case format
          when 'epoch-seconds' then value.to_i.to_s
          when 'http-date' then value.utc.httpdate
          when 'date-time' then value.utc.iso8601
          else raise ArgumentError, "unsupported Query timestamp format: #{format.inspect}"
          end
        end

        def set(name, value, result)
          result.set(name, value)
        end

        def query_name(shape)
          @ec2 ? QueryExtension.ec2_query_name(shape) : QueryExtension.query_name(shape)
        end

        def list_prefix(shape, member_shape, prefix)
          return prefix if @ec2
          return "#{prefix}.#{query_name(member_shape)}" unless QueryExtension.flattened?(shape)

          name = query_name(shape)
          return prefix unless name

          separator = prefix.rindex('.')
          separator ? "#{prefix[0, separator + 1]}#{name}" : name
        end
      end
    end
  end
end
