require 'cgi'

module Seahorse
  module Client
    module Plugins
      class RestfulBindings < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            build_request(context)
            @handler.call(context).on(200..299) do |response|
              parse_response(response)
            end
          end

          private

          # Populates the HTTP request method and headers.
          def build_request(context)
            populate_http_request_method(context)
            populate_http_headers(context)
          end

          def populate_http_request_method(context)
            context.http_request.http_method = context.operation.http_method
          end

          def populate_http_headers(context)
            params = context.params
            headers = context.http_request.headers
            each_member(context.operation.input) do |member_name, member|
              value = params[member_name]
              next if value.nil?
              case member.location
              when 'header'  then serialize_header(headers, member, value)
              when 'headers' then serialize_header_map(headers, member, value)
              end
            end
          end

          def serialize_header(headers, shape, value)
            headers[shape.location_name] = serialize_header_value(shape, value)
          end

          def serialize_header_map(headers, shape, values)
            prefix = shape.location_name || ''
            values.each_pair do |name, value|
              value = serialize_header_value(shape.value, value)
              headers["#{prefix}#{name}"] = value
            end
          end

          def serialize_header_value(shape, value)
            if shape.is_a?(Model::Shapes::Timestamp)
              shape.format_time(value, 'httpdate')
            else
              value.to_s
            end
          end

          # Extracts HTTP response headers and status code.
          def parse_response(response)
            headers = response.context.http_response.headers
            each_member(response.context.operation.output) do |key, shape|
              case shape.location
              when 'statusCode'
                status_code = response.context.http_response.status_code
                response.data[key] = status_code
              when 'header'
                if headers.key?(shape.location_name)
                  response.data[key] = extract_header(headers, shape)
                end
              when 'headers'
                response.data[key] = extract_header_map(headers, shape)
              end
            end
          end

          def extract_header(headers, shape)
            parse_header_value(shape, headers[shape.location_name])
          end

          def extract_header_map(headers, shape)
            prefix = shape.location_name || ''
            hash = {}
            headers.each do |header, value|
              if match = header.match(/^#{prefix}(.+)/i)
                hash[match[1]] = parse_header_value(shape.value, value)
              end
            end
            hash
          end

          def parse_header_value(shape, value)
            if value
              case shape
              when Model::Shapes::Integer then value.to_i
              when Model::Shapes::Float then value.to_f
              when Model::Shapes::Boolean then value == 'true'
              when Model::Shapes::Timestamp
                shape.format == 'unix_timestamp' ? value.to_i : Time.parse(value)
              else value
              end
            end
          end

          def each_member(shape, &block)
            shape.members.each(&block) if shape
          end

        end

        handle(Handler, priority: 90)

      end
    end
  end
end
