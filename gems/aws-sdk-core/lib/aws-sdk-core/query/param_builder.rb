# frozen_string_literal: true

require 'base64'

module Aws
  module Core
    module Query
      # @api private
      class ParamBuilder
        include Smithy::Schema::Shapes

        def initialize(options = {})
          @ec2 = options[:ec2] || false
        end

        def build(shape, params, result = nil)
          structure(shape, params, result, '')
        end

        private

        def build_shape(shape, value, result, prefix)
          case shape.target
          when BlobShape then set(prefix, blob(value), result)
          when ListShape then list(shape, value, result, prefix)
          when MapShape then map(shape, value, result, prefix)
          when StructureShape then structure(shape, value, result, "#{prefix}.")
          when TimestampShape then set(prefix, timestamp(shape, value), result)
          else set(prefix, value.to_s, result)
          end
        end

        def blob(value)
          Base64.strict_encode64(value.respond_to?(:read) ? value.read : value)
        end

        def list(shape, values, result, prefix) # rubocop:disable Metrics/AbcSize
          if values.empty?
            return @ec2 ? nil : set(prefix, '', result)
          end

          member_shape = shape.target.member
          unless @ec2
            if flat?(shape)
              if (name = query_name(shape))
                parts = prefix.split('.')
                parts.pop
                parts.push(name)
                prefix = parts.join('.')
              end
            else
              prefix += ".#{query_name(member_shape, 'member')}"
            end
          end
          values.each.with_index do |value, n|
            build_shape(member_shape, value, result, "#{prefix}.#{n + 1}")
          end
        end

        def map(shape, values, result, prefix) # rubocop:disable Metrics/AbcSize
          raise NotImplementedError if @ec2

          key_member = shape.target.key
          value_member = shape.target.value
          prefix += '.entry' unless flat?(shape)
          key_name = "%s.%d.#{query_name(key_member, 'key')}"
          value_name = "%s.%d.#{query_name(value_member, 'value')}"
          values.each.with_index do |(key, value), n|
            build_shape(key_member, key, result, format(key_name, prefix, n + 1))
            build_shape(value_member, value, result, format(value_name, prefix, n + 1))
          end
        end

        def structure(shape, values, result, prefix)
          values.each_pair do |name, value|
            next if value.nil?

            member_shape = shape.target.member(name)
            build_shape(member_shape, value, result, prefix + query_name(member_shape, member_shape.location_name))
          end
        end

        def timestamp(shape, value)
          trait = 'smithy.api#timestampFormat'
          case shape.traits[trait] || shape.target.traits[trait]
          when 'epoch-seconds' then value.to_i
          when 'http-date' then value.utc.httpdate
          else
            # query defaults to date-time
            value.utc.iso8601
          end
        end

        def set(name, value, result)
          result.set(name, value)
        end

        def query_name(shape, default = nil)
          xml_name = shape.traits['smithy.api#xmlName'] || default
          return xml_name unless @ec2

          shape.traits['aws.protocols#ec2QueryName'] || ucfirst(xml_name)
        end

        def ucfirst(str)
          str[0].upcase + str[1..]
        end

        def flat?(shape)
          shape.traits.key?('smithy.api#xmlFlattened')
        end
      end
    end
  end
end
