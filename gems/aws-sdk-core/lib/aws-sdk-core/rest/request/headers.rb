# frozen_string_literal: true

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Headers
          include Smithy::Schema::Shapes

          def initialize(ref)
            @ref = ref
          end

          def apply(request_or_response, params)
            @ref.shape.members.each do |member_name, member_ref|
              value = params[member_name]
              next if value.nil?

              member_traits = member_ref.traits
              if member_traits.key?('smithy.api#httpHeader')
                header_name = member_traits['smithy.api#httpHeader']
                apply_header(request_or_response.headers, header_name, member_ref, value)
              elsif member_traits.key?('smithy.api#httpPrefixHeaders')
                header_prefix = member_traits['smithy.api#httpPrefixHeaders']
                apply_prefix_header(request_or_response.headers, header_prefix, value)
              end
            end
          end

          private

          def apply_header(headers, header_name, member_ref, value)
            case member_ref.shape
            when ListShape then list(headers, header_name, member_ref, value)
            when StringShape then string(headers, header_name, member_ref.shape, value)
            when TimestampShape then headers[header_name] = timestamp(member_ref, value)
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

            member_ref = ref.shape.member
            values = values.collect do |value|
              case member_ref.shape
              when TimestampShape
                timestamp(member_ref, value).to_s
              else
                escape_header_list_string(value.to_s)
              end
            end
            headers[header_name] = values.compact.join(', ')
          end

          def string(headers, header_name, shape, value)
            if shape.traits.key?('smithy.api#mediaType')
              headers[header_name] = Base64.strict_encode64(value)
            else
              default(headers, header_name, value)
            end
          end

          def timestamp(ref, value)
            trait = 'smithy.api#timestampFormat'
            case ref.traits[trait] || ref.shape.traits[trait]
            when 'date-time' then value.utc.iso8601
            when 'epoch-seconds' then value.to_i
            else
              # default to http-date
              value.utc.httpdate
            end
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
