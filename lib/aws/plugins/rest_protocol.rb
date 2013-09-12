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
          populated_headers_and_body(context)
        end

        def populate_method(context)
          context.http_request.http_method = context.operation.http_method
        end

        def populate_path(context)
          context.http_request.path =
            interpolate_path(context.operation.http_path, context.params)
        end

        def interpolate_path(path, params)
          path = path.gsub(/([^&\?= ]+?)=\{(.+?)\}(?:&|$)/) do
            value = params[$2.to_sym]
            value ? "#{$1}=#{value}" : ""
          end
          path = path.gsub(/\{(.+?)\}/) { params[$1.to_sym] }
          path
        end

        def populated_headers_and_body(context)
          if rules = context.operation.input
            context.params.each do |param_name, value|
              rule = rules.members[param_name]
              if rule.location == 'header'
                build_header(rule, context.http_request.headers, value)
              elsif rule.metadata['streaming']
                context.http_request.body = value
              end
            end
          end
        end

        def build_header(rule, headers, value)
          if rule.is_a?(MapShape)
            build_header_map(rule, headers, value)
          else
            headers[rule.serialized_name] = cast_header_value(rule, value)
          end
        end

        def build_header_map(shape, headers, hash)
          hash.each_pair do |suffix, value|
            headers["#{shape.serialized_name}#{suffix}"] =
              cast_header_value(shape.members, value)
          end
        end

        def cast_header_value(rule, value)
          case shape
            when UnixTimestampShape then value.to_i.to_s
            when Rfc822TimestampShape then value.utc.iso8601
            when Iso8601TimestampShape then value.utc.rfc822
            else value.to_s
          end
        end

        def parse_response(response)
          if rules = response.context.operation.output
            response.data = Structure.new(rules.members.keys)
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
            cast_header_value(shape, headers[shape.serialized_name])
          end
        end

        def header_map(shape, headers)
          hash = {}
          headers.each do |header, value|
            if match = header.match(/^#{shape.serialized_name}(.+)/)
              hash[match[1]] = cast_header_value(shape.members, value)
            end
          end
          hash
        end

        def cast_header_value(shape, value)
          if value
            case shape
            when UnixTimestampShape then Time.at(value.to_i)
            when TimestampShape then Time.parse(value)
            when IntegerShape then value.to_i
            when FloatShape then value.to_f
            else value
            end
          end
        end

      end

      handle(Handler)

    end
  end
end
