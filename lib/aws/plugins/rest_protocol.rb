# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

module Aws
  module Plugins
    class RestProtocol < Seahorse::Client::Plugin
      class Handler < Seahorse::Client::Handler

        include Seahorse::Model::Shapes

        def call(context)
          build_request(context)
          @handler.call(context).on_complete do |response|
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
          if rules = context.operation.input
            context.params.each do |param_name, value|
              rule = rules.members[param_name]
              if rule.location == 'header'
                build_header(rule, context.http_request.headers, value)
              end
            end
          end
        end

        def populate_body(context)
          input = context.operation.input
          if input.raw_payload
            payload = input.body_members.keys.first
            context.http_request.body = context.params[payload]
          end
        end

        def build_header(rule, headers, value)
          if rule.is_a?(MapShape)
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
          when UnixTimestampShape then value.to_i.to_s
          when Rfc822TimestampShape then value.utc.rfc822
          when Iso8601TimestampShape then value.utc.iso8601
          else value.to_s
          end
        end

        def parse_response(response)
          if rules = response.context.operation.output
            response.data ||= Structure.new(rules.members.keys)
            extract_headers_and_body(rules, response)
          end
        end

        def extract_headers_and_body(rules, response)
          headers = response.http_response.headers
          rules.members.each do |member_name, member|
            if member.location == 'header'
              response.data[member_name] = header_value(member, headers)
            elsif member.metadata['streaming']
              response.data[member_name] = response.http_response.body
            end
          end
        end

        def header_value(shape, headers)
          if shape.is_a?(MapShape)
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
            when UnixTimestampShape then Time.at(value.to_i)
            when TimestampShape then Time.parse(value)
            when IntegerShape then value.to_i
            when FloatShape then value.to_f
            when BooleanShape then value == 'true'
            else value
            end
          end
        end

      end

      handle(Handler, priority: 90)

      # @api private
      class UriPathBuilder

        PLACEHOLDER_REGEX = /{\w+?}/

        # @param [String] path_pattern
        # @param [Hash<Seahorse::Model::Shapes::Shape>]
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
                parts << part.sub(placeholder, escape(param_value))
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

        def escape(value)
          Util.uri_escape(value.to_s)
        end

      end
    end
  end
end
