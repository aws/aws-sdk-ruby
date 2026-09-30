# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Headers
          def initialize(shape)
            @metadata = HTTP_EXTENSION.fetch(shape)
          end

          def apply(request_or_response, params)
            @metadata.fetch(:header_members, []).each do |member_name, member_ref, header_name|
              value = params[member_name]
              next if value.nil?

              apply_header(request_or_response.headers, header_name, member_ref, value)
            end

            if (name, _, prefix = @metadata[:prefix_header_member]) && (values = params[name])
              apply_prefix_header(request_or_response.headers, prefix, values)
            end
          end

          private

          def apply_header(headers, header_name, member_ref, value)
            case SCHEMA_EXTENSION.target_shape(member_ref)
            when SCHEMA_EXTENSION::SHAPE_LIST then list(headers, header_name, member_ref, value)
            when SCHEMA_EXTENSION::SHAPE_STRING then string(headers, header_name, member_ref.target, value)
            when SCHEMA_EXTENSION::SHAPE_TIMESTAMP then headers[header_name] = timestamp(member_ref, value)
            else default(headers, header_name, value)
            end
          end

          def apply_prefix_header(headers, header_prefix, values)
            values.each_pair do |name, value|
              headers["#{header_prefix}#{name}"] ||= value.to_s
            end
          end

          def list(headers, header_name, ref, values)
            return if values.nil?

            member_ref, member_shape = SCHEMA_EXTENSION.list_member(ref.target)
            values = values.collect do |value|
              case member_shape
              when SCHEMA_EXTENSION::SHAPE_TIMESTAMP
                timestamp(member_ref, value).to_s
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

          def timestamp(ref, value)
            format = SCHEMA_EXTENSION.timestamp_format(ref)
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
