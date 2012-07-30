# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'builder'

module AWS
  module Core
    module RESTClient

      # Given a hash of request options, a REST::RequestHandler can
      # populate a Core::Http::Request object.
      class InputHandler

        # @param [String] namespace
        # @param [Hash] configuration
        # @option operation [required,Hash] :http REST traits.
        # @option operation [required,Hash] :inputs Rules for serializing
        #   request options.
        # @private
        def initialize namespace, configuration
          @namespace = namespace
          @operation_name = configuration[:name]
          @http = configuration[:http]
          @rules = configuration[:inputs]
        end

        # @return [String]
        attr_reader :namespace

        # @return [String]
        attr_reader :operation_name

        # @return [Hash] A hash of http rules.
        attr_reader :http

        # @return [Hash] A hash of rules for where to place request options
        #   in the HTTP request (e.g. uri, querystring, header, body, etc).
        #   Also contains type information for each request option.
        attr_reader :rules

        # Populates an http request object with params in the uri, headers,
        # and body.
        # @param [Http::Request] request
        # @param [Hash] request_options A hash of options to send with
        #   the request.
        # @raise [ArgumentError] Raises ArgumentError when any of the
        #   request options are invalid (wrong type, missing, unknown, etc).
        # @return [Http::Request]
        def populate_request request, request_options

          params = Options::Validator.new(rules).validate!(request_options)

          request.http_method = http[:verb]
          request.uri = extract_uri(params)
          extract_headers(params).each_pair do |header_name, header_value|
            request.headers[header_name] = header_value
          end
          request.body = build_body(params)
          request

        end

        protected

        # @param [Hash] params
        # @return [String]
        def extract_uri params

          path, querystring = http[:uri].split(/\?/)

          uri = path.gsub(/:\w+/) do |param_name|
            unless param = params.delete(param_name[1..-1].to_sym)
              msg = "missing required uri argument :#{param_name[1..-1]}"
              raise ArgumentError, msg
            end
            UriEscape.escape(param)
          end

          querystring_parts = []
          querystring.to_s.split(/&/).each do |part|
            param_name = part.match(/:(\w+)/)[1]
            if param = params.delete(param_name.to_sym)
              param = UriEscape.escape(param)
              querystring_parts << part.sub(/:#{param_name}/, param)
            end
          end

          unless querystring_parts.empty?
            uri << "?#{querystring_parts.join('&')}"
          end

          uri

        end

        # @param [Hash] params
        # @return [Hash]
        def extract_headers params
          headers = {}
          (http[:request_headers] || {}).each_pair do |param_name,header_name|
            if param_value = params.delete(param_name)
              headers[header_name] = param_value
            end
          end
          headers
        end

        # @param [Hash] params
        # @return [String,nil]
        def build_body params
          if params.empty?
            nil
          else
            if
              payload = http[:request_payload] and
              rules[payload][:type] != :hash
            then
              params[payload]
            else
              params_to_xml(params)
            end
          end
        end

        # @param [Hash] params
        # @return [String] Returns xml.
        def params_to_xml params
          Options::XMLSerializer.new(namespace, operation_name, rules).serialize(params)
        end

      end

    end
  end
end
