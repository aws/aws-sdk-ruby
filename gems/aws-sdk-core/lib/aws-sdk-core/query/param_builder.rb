# frozen_string_literal: true

require 'base64'

module Aws
  module Core
    module Query
      # @api private
      class ParamBuilder
        include Smithy::Schema::Shapes

        def initialize(param_list)
          @params = param_list
        end

        attr_reader :params

        def apply(ref, params)
          structure(ref, params, '')
        end

        private

        def structure(ref, values, prefix)
          shape = ref.shape
          values.each_pair do |name, value|
            next if value.nil?
            member_ref = shape.member(name)
            format(member_ref, value, prefix + query_name(member_ref, member_ref.member_name))
          end
        end

        def list(ref, values, prefix)
          member_ref = ref.shape.member
          if values.empty?
            set(prefix, '')
            return
          end
          if flat?(ref)
            if (name = query_name(ref))
              parts = prefix.split('.')
              parts.pop
              parts.push(name)
              prefix = parts.join('.')
            end
          else
            prefix += '.' + query_name(member_ref, 'member')
          end
          values.each.with_index do |value, n|
            format(member_ref, value, "#{prefix}.#{n+1}")
          end
        end

        def map(ref, values, prefix)
          key_ref = ref.shape.key
          value_ref = ref.shape.value
          prefix += '.entry' unless flat?(ref)
          key_name = "%s.%d.#{query_name(key_ref, 'key')}"
          value_name  = "%s.%d.#{query_name(value_ref, 'value')}"
          values.each.with_index do |(key, value), n|
            format(key_ref, key, key_name % [prefix, n + 1])
            format(value_ref, value, value_name % [prefix, n + 1])
          end
        end

        def format(ref, value, prefix)
          shape = ref.shape
          case shape
          when StructureShape then structure(ref, value, prefix + '.')
          when ListShape      then list(ref, value, prefix)
          when MapShape       then map(ref, value, prefix)
          when BlobShape      then set(prefix, blob(value))
          when TimestampShape then set(prefix, timestamp(ref, shape, value))
          else set(prefix, value.to_s)
          end
        end

        def query_name(ref, default = nil)
          ref.traits['smithy.api#xmlName'] || default
        end

        def set(name, value)
          params.set(name, value)
        end

        def flat?(ref)
          ref.traits.key?('smithy.api#xmlFlattened')
        end

        def timestamp(member_ref, shape, value)
          trait = 'smithy.api#timestampFormat'
          case member_ref.traits[trait] || shape.traits[trait]
          when 'epoch-seconds' then value.to_i
          when 'http-date' then value.utc.httpdate
          else
            # query defaults to iso8601
            value.utc.iso8601
          end
        end

        def blob(value)
          value = value.read unless String === value
          Base64.strict_encode64(value)
        end

      end
    end
  end
end
