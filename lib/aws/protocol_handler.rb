# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class ProtocolHandler < Seahorse::Client::Handler

    def call(context)
      build_request(context)
      response = @handler.call(context)

      # handle ~200 level responses
      response.on_success do |response|
        parse_response(response)
      end

      # handle ~400 and ~500 level responses
      response.on_error do |response|
        response.data = nil
        response.error = extract_error(response)
      end

      response
    end

    private

    def build_request(context)
      populate_headers(context)
      populate_body(context)
    end

    def populate_headers(context)
      raise NotImplementedError
    end

    def builder_class
      raise NotImplementedError
    end

    def parser_class
      raise NotImplementedError
    end

    def extract_error(response)
      raise NotImplementedError
    end

    def populate_body(context)
      input = context.operation.input
      unless input.raw_payload? || input.payload_member.empty?
        if input.payload
          rules = input.payload_member
          params = context.params[input.payload] || {}
        else
          rules = input
          params = context.params
        end
        context.http_request.body = builder_class.build(rules, params)
      end
    end

    def parse_response(response)
      output = response.context.operation.output
      response.data = Structure.new(output.members.keys)
      unless output.raw_payload?
        body = response.context.http_response.body
        parser_class.parse(output, body.read, response.data)
        body.rewind
      end
    end

  end
end
