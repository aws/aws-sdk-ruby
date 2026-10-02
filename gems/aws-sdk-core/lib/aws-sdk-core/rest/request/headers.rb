# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Headers
          def initialize(shape)
            @header_members = HTTP_EXTENSION.header_members(shape)
            @prefix_header_member = HTTP_EXTENSION.prefix_header_member(shape)
          end

          def apply(request_or_response, params)
            @header_members.each do |m_name, m_shape, header_name|
              value = params[m_name]
              next if value.nil?

              apply_header(request_or_response.headers, header_name, m_shape, value)
            end

            if (name, _, prefix = @prefix_header_member) && (values = params[name])
              apply_prefix_header(request_or_response.headers, prefix, values)
            end
          end

          private

          def apply_header(headers, header_name, member_shape, value)
            target_shape = member_shape.target
            case target_shape
            when Smithy::Schema::Shapes::ListShape then list(headers, header_name, member_shape, value)
            when Smithy::Schema::Shapes::StringShape then string(headers, header_name, target_shape, value)
            when Smithy::Schema::Shapes::TimestampShape then headers[header_name] = timestamp(member_shape, value)
            else default(headers, header_name, value)
            end
          end

          def apply_prefix_header(headers, header_prefix, values)
            values.each_pair do |name, value|
              headers["#{header_prefix}#{name}"] ||= value.to_s
            end
          end

          def list(headers, header_name, member, values)
            return if values.nil?

            member_shape = member.target.member
            target_shape = member_shape.target
            values = values.collect do |value|
              case target_shape
              when Smithy::Schema::Shapes::TimestampShape
                timestamp(member_shape, value).to_s
              else
                escape_header_list_string(value.to_s)
              end
            end
            headers[header_name] = values.compact.join(', ')
          end

          def string(headers, header_name, shape, value)
            if SCHEMA_EXTENSION.media_type(shape)
              headers[header_name] = Base64.strict_encode64(value)
            else
              default(headers, header_name, value)
            end
          end

          def timestamp(shape, value)
            format = SCHEMA_EXTENSION.timestamp_format(shape)
            format = 'http-date' if format == :default
            Smithy::Schema::Utils.serialize_timestamp(value, format)
          end

          def default(headers, header_name, value)
            headers[header_name] = value.to_s
          end

          def escape_header_list_string(str)
            str.include?('"') || str.include?(',') ? "\"#{str.gsub('"', '\"')}\"" : str
          end
        end
      end
    end
  end
end
