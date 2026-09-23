# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Response
        # @api private
        class Headers
          def initialize(shape)
            @shape = shape
          end

          def apply(http_resp, target)
            metadata = HTTP_EXTENSION.fetch(@shape)
            metadata.fetch(:header_members, []).each do |name, member, header|
              extract_header(http_resp.headers, header, member, name, target)
            end
            if (name, _, prefix = metadata[:prefix_header_member])
              extract_prefix_header(http_resp.headers, prefix, name, target)
            end
          end

          private

          def extract_header(headers, header, ref, name, target)
            return unless headers.key?(header)

            target[name] = value(ref, headers[header])
          end

          def extract_prefix_header(headers, header_prefix, name, target)
            target[name] = {}
            headers.each do |header_name, header_value|
              match = header_name.match(/^#{header_prefix}(.+)/i)
              next unless match

              target[name][match[1]] = header_value
            end
          end

          def value(ref, value)
            shape = ref.target
            case shape
            when ::Smithy::Schema::Shapes::BooleanShape then value == 'true'
            when ::Smithy::Schema::Shapes::FloatShape then float(value)
            when ::Smithy::Schema::Shapes::IntegerShape,
                 ::Smithy::Schema::Shapes::IntEnumShape then value.to_i
            when ::Smithy::Schema::Shapes::ListShape then list(shape.member, value)
            when ::Smithy::Schema::Shapes::StringShape,
                 ::Smithy::Schema::Shapes::EnumShape then string(shape, value)
            when ::Smithy::Schema::Shapes::TimestampShape then timestamp(value)
            else value
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

          def list(ref, value)
            shape = ref.target
            case shape
            when ::Smithy::Schema::Shapes::StringShape
              HeaderListParser.parse_string_list(value)
            when ::Smithy::Schema::Shapes::TimestampShape
              HeaderListParser.parse_timestamp_list(ref, shape, value)
            else value.split(', ').map { |v| value(ref, v) }
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
              rescue StandardError
                nil
              end
            end
          end
        end
      end
    end
  end
end
