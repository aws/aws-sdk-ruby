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

        def build(ref, params, target = nil)
          structure(ref, params, target, '')
        end

        private

        def shape(ref, value, target, prefix)
          case ref.shape
          when BlobShape then set(prefix, blob(value), target)
          when ListShape then list(ref, value, target, prefix)
          when MapShape then map(ref, value, target, prefix)
          when StructureShape then structure(ref, value, target, "#{prefix}.")
          when TimestampShape then set(prefix, timestamp(ref, value), target)
          else set(prefix, value.to_s, target)
          end
        end

        def blob(value)
          Base64.strict_encode64(value.respond_to?(:read) ? value.read : value)
        end

        def list(ref, values, target, prefix) # rubocop:disable Metrics/AbcSize
          if values.empty?
            return @ec2 ? nil : set(prefix, '', target)
          end

          member_ref = ref.shape.member
          unless @ec2
            if flat?(ref)
              if (name = query_name(ref))
                parts = prefix.split('.')
                parts.pop
                parts.push(name)
                prefix = parts.join('.')
              end
            else
              prefix += ".#{query_name(member_ref, 'member')}"
            end
          end
          values.each.with_index do |value, n|
            shape(member_ref, value, target, "#{prefix}.#{n + 1}")
          end
        end

        def map(ref, values, target, prefix) # rubocop:disable Metrics/AbcSize
          raise NotImplementedError if @ec2

          key_ref = ref.shape.key
          value_ref = ref.shape.value
          prefix += '.entry' unless flat?(ref)
          key_name = "%s.%d.#{query_name(key_ref, 'key')}"
          value_name = "%s.%d.#{query_name(value_ref, 'value')}"
          values.each.with_index do |(key, value), n|
            shape(key_ref, key, target, format(key_name, prefix, n + 1))
            shape(value_ref, value, target, format(value_name, prefix, n + 1))
          end
        end

        def structure(ref, values, target, prefix)
          shape = ref.shape
          values.each_pair do |name, value|
            next if value.nil?

            member_ref = shape.member(name)
            shape(member_ref, value, target, prefix + query_name(member_ref, member_ref.member_name))
          end
        end

        def timestamp(ref, value)
          trait = 'smithy.api#timestampFormat'
          case ref.traits[trait] || ref.shape.traits[trait]
          when 'epoch-seconds' then value.to_i
          when 'http-date' then value.utc.httpdate
          else
            # query defaults to date-time
            value.utc.iso8601
          end
        end

        def set(name, value, target)
          target.set(name, value)
        end

        def query_name(ref, default = nil)
          xml_name = ref.traits['smithy.api#xmlName'] || default
          return xml_name unless @ec2

          ref.traits['aws.protocols#ec2QueryName'] || ucfirst(xml_name)
        end

        def ucfirst(str)
          str[0].upcase + str[1..]
        end

        def flat?(ref)
          ref.traits.key?('smithy.api#xmlFlattened')
        end
      end
    end
  end
end
