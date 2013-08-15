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
      handle(:Handler) do |context|
        uri = context.operation.http_uri || '/'
        uri = uri.gsub(/([^&\?= ]+?)=\{(.+?)\}(?:&|$)/) do
          value = context.params[$2.to_sym]
          value ? "#{$1}=#{value}" : ""
        end
        uri = uri.gsub(/\{(.+?)\}/) { context.params[$1.to_sym] }

        context.http_request.http_method = context.operation.http_verb || 'POST'
        context.http_request.path = uri

        # add all top-level headers
        context.params.each do |key, value|
          next unless member = context.operation.input.members[key]
          if member.location == 'header'
            context.http_request.headers[member.location_name || key] = value
          elsif member.payload
            context.http_request.body = value
          end
        end

        super(context).on_complete do |response|
          response.data = {}

          # add all top-level headers
          context.operation.output.members.each do |name, member|
            if member.location == 'header'
              header = member.location_name || name
              if response.http_response.headers.has_key?(header)
                response.data[name.to_sym] = response.http_response.headers[header]
              end
            elsif member.payload
              response.data[name.to_sym] = response.http_response.body
            end
          end
        end
      end
    end
  end
end
