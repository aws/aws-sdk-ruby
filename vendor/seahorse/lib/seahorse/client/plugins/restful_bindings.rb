require 'cgi'

module Seahorse
  module Client
    module Plugins
      class RestfulBindings < Plugin

        # @api private
        class Handler < Client::Handler

          def call(context)
            build_request(context)
            @handler.call(context).on_success do |response|
              parse_response(response)
            end
          end

          private

          def build_request(context)
            populate_method(context)
            populate_path(context)
            populate_headers(context)
            populate_body(context)
          end

          def populate_method(context)
            context.http_request.http_method = context.operation.http_method
          end

          def populate_path(context)
            builder = UriPathBuilder.new(
              context.operation.http_path,
              context.operation.input.uri_members)
            context.http_request.path = builder.path(context.params)
          end

          def populate_headers(context)
            context.operation.input.header_members.each do |member_name, member|
              value = context.params[member_name]
              unless value.nil?
                build_header(member, context.http_request.headers, value)
              end
            end
          end

          def populate_body(context)
            input = context.operation.input
            if input.raw_payload?
              payload = context.params[input.payload]
              context.http_request.body = payload unless payload.nil?
            end
          end

          def build_header(rule, headers, value)
            if map_shape?(rule)
              build_header_map(rule, headers, value)
            else
              headers[rule.serialized_name] = serialize_header_value(rule, value)
            end
          end

          def build_header_map(shape, headers, hash)
            hash.each_pair do |suffix, value|
              headers["#{shape.serialized_name}#{suffix}"] =
                serialize_header_value(shape.members, value)
            end
          end

          def serialize_header_value(shape, value)
            case shape
            when Model::Shapes::UnixTimestampShape then value.to_i.to_s
            when Model::Shapes::Rfc822TimestampShape then value.utc.rfc822
            when Model::Shapes::Iso8601TimestampShape then value.utc.iso8601
            else value.to_s
            end
          end

          def parse_response(response)
            output = response.context.operation.output
            response.data ||= Structure.new(output.members.keys)
            extract_headers(response)
            extract_body(response)
          end

          def extract_headers(response)
            headers = response.http_response.headers
            rules = response.context.operation.output.header_members
            rules.each do |member_name, member|
              response.data[member_name] = header_value(member, headers)
            end
          end

          def header_value(shape, headers)
            if map_shape?(shape)
              header_map(shape, headers)
            else
              parse_header_value(shape, headers[shape.serialized_name])
            end
          end

          def header_map(shape, headers)
            hash = {}
            headers.each do |header, value|
              if match = header.match(/^#{shape.serialized_name}(.+)/)
                hash[match[1]] = parse_header_value(shape.members, value)
              end
            end
            hash
          end

          def parse_header_value(shape, value)
            if value
              case shape
              when Model::Shapes::UnixTimestampShape then Time.at(value.to_i)
              when Model::Shapes::TimestampShape then Time.parse(value)
              when Model::Shapes::IntegerShape then value.to_i
              when Model::Shapes::FloatShape then value.to_f
              when Model::Shapes::BooleanShape then value == 'true'
              else value
              end
            end
          end

          def extract_body(response)
            output = response.context.operation.output
            if output.raw_payload?
              response.data[output.payload] = response.http_response.body
            end
          end

          def map_shape?(shape)
            shape.is_a?(Model::Shapes::MapShape)
          end

        end

        handle(Handler, priority: 90)

        # @api private
        class UriPathBuilder

          PLACEHOLDER_REGEX = /{\w+?}/

          # @param [String] path_pattern
          # @param [Hash<Model::Shapes::Shape>] rules
          def initialize(path_pattern, rules)
            @pattern = path_pattern
            @rules = rules
          end

          # @param [Hash] params
          # @return [String<URI path>]
          def path(params)
            path, querystring = @pattern.split('?')
            path = escape_path_params(path, params)
            if querystring
              querystring = escape_querystring_params(querystring, params)
              path = "#{path}?#{querystring}" unless querystring.empty?
            end
            path
          end

          private

          def escape_path_params(path, params)
            path.gsub(PLACEHOLDER_REGEX) do |placeholder|
              param_value = params[param_name(placeholder)]
              path_escape(param_value)
            end
          end

          def escape_querystring_params(querystring, params)
            parts = []
            querystring.split('&').each do |part|
              if match = part.match(PLACEHOLDER_REGEX)
                placeholder = match[0]
                param_value = params[param_name(placeholder)]
                unless param_value.nil?
                  parts << part.sub(placeholder, escape(param_value.to_s))
                end
              else
                parts << part # querystring param has no substitution
              end
            end
            parts.join('&')
          end

          def param_name(placeholder)
            placeholder[1..-2].to_sym
          end

          def path_escape(value)
            escape(value).gsub('%2F', '/')
          end

          def escape(string)
            CGI::escape(string.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end

        end
      end
    end
  end
end
