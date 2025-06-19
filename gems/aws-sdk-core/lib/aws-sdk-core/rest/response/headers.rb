# frozen_string_literal: true

require_relative 'header_list_parser'

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class Headers
          include Smithy::Schema::Shapes

          def initialize(ref)
            @ref = ref
          end

          def apply(response, target)
            headers = response.headers
            @ref.shape.members.each do |name, member|
              member_traits = member.traits
              if member_traits.key?('smithy.api#httpHeader')
                header = member_traits['smithy.api#httpHeader']
                extract_header(headers, header, member.shape, name, target)
              elsif member_traits.key?('smithy.api#httpPrefixHeaders')
                header_prefix = member_traits['smithy.api#httpPrefixHeaders']
                extract_prefix_header(headers, header_prefix, name, target)
              end
            end
          end

          private

          def extract_header(headers, header, shape, name, target)
            return unless headers.key?(header)

            target[name] = value(shape, headers[header])
          end

          def extract_prefix_header(headers, header_prefix, name, target)
            target[name] = {}
            headers.each do |header_name, header_value|
              match = header_name.match(/^#{header_prefix}(.+)/i)
              next unless match

              target[name][match[1]] = header_value
            end
          end

          def value(shape, value)
            case shape
            when StringShape, EnumShape then string(shape, value)
            when IntegerShape, IntEnumShape then value.to_i
            when FloatShape then float(value)
            when BooleanShape then value == 'true'
            when ListShape then list(shape, value)
            when TimestampShape then timestamp(value)
            else raise "unsupported shape #{shape.class}"
            end
          end

          def float(value)
            case value
            when 'Infinity' then ::Float::INFINITY
            when '-Infinity' then -::Float::INFINITY
            when 'NaN' then ::Float::NAN
            when nil then nil
            else value.to_f
            end
          end

          def list(shape, value)
            case shape.member.shape
            when StringShape then HeaderListParser.parse_string_list(value)
            when TimestampShape then HeaderListParser.parse_timestamp_list(value, shape.member.shape)
            else value.split(', ').map { |v| value(shape.member.shape, v) }
            end
          end

          def string(shape, value)
            if shape.traits.key?('smithy.api#mediaType')
              Base64.strict_decode64(value)
            else
              value.to_s
            end
          end

          def timestamp(value)
            if value =~ /^\d+(\.\d*)/
              Time.at(value.to_f)
            elsif value =~ /^\d+$/
              Time.at(value.to_i)
            else
              begin
                Time.parse(value)
              rescue
                nil
              end
            end
          end
        end
      end
    end
  end
end
