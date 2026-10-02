# frozen_string_literal: true

require 'base64'

module Aws
  module Core
    module Query
      # @api private
      class ParamBuilder
        def initialize(options = {})
          @ec2 = options[:ec2] || false
          @extension = @ec2 ? Ec2QueryExtension : QueryExtension
          @default_timestamp = options.fetch(:default_timestamp, 'date-time')
        end

        def build(shape, params, result = nil)
          structure(shape, params, result, '')
        end

        private

        def build_shape(shape, value, result, prefix)
          case shape.target
          when Smithy::Schema::Shapes::BlobShape then set(prefix, blob(value), result)
          when Smithy::Schema::Shapes::ListShape then list(shape, value, result, prefix)
          when Smithy::Schema::Shapes::MapShape then map(shape, value, result, prefix)
          when Smithy::Schema::Shapes::StructureShape then structure(shape, value, result, "#{prefix}.")
          when Smithy::Schema::Shapes::TimestampShape then set(prefix, timestamp(shape, value), result)
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

          member_shape = shape.target.member
          prefix = list_prefix(shape, member_shape, prefix)
          values.each.with_index do |value, n|
            build_shape(member_shape, value, result, "#{prefix}.#{n + 1}")
          end
        end

        def map(shape, values, result, prefix)
          raise NotImplementedError if @ec2

          key_member, value_member, key_name, value_name, flattened = @extension.map_plan(shape)
          prefix += '.entry' unless flattened
          values.each.with_index do |(key, value), n|
            entry_prefix = "#{prefix}.#{n + 1}"
            build_shape(key_member, key, result, "#{entry_prefix}.#{key_name}")
            build_shape(value_member, value, result, "#{entry_prefix}.#{value_name}")
          end
        end

        def structure(shape, values, result, prefix)
          index = @extension.query_index(shape.target)
          values.each_pair do |name, value|
            next if value.nil?

            entry = index[name]
            next unless entry

            wire_name, member_shape, = entry
            build_shape(member_shape, value, result, prefix + wire_name)
          end
        end

        def timestamp(shape, value)
          format = @extension.timestamp_format(shape)
          format = @default_timestamp if format == :default

          Smithy::Schema::Utils.serialize_timestamp(value, format).to_s
        end

        def set(name, value, result)
          result.set(name, value)
        end

        def query_name(shape)
          @extension.query_name(shape)
        end

        def list_prefix(shape, member_shape, prefix)
          return prefix if @ec2
          return "#{prefix}.#{query_name(member_shape)}" unless @extension.flattened?(shape)

          name = query_name(shape)
          return prefix unless name

          separator = prefix.rindex('.')
          separator ? "#{prefix[0, separator + 1]}#{name}" : name
        end
      end
    end
  end
end
