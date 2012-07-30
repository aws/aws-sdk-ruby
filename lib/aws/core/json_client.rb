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

require 'json'

module AWS
  module Core

    # = AWS::Core::Client::JSON
    #
    # Clients extend this module if the service they represent are
    # AWS Query services that accept and return JSON.
    #
    module JSONClient

      # Constructs the option grammars, one per service operation.
      # @private
      def self.extended base
        base.send(:include, ErrorParser)
        base.send(:define_grammars)
      end

      # @return [Hash<Symbol,OptionGrammar>] Returns a hash option
      #   grammars.  Keys are method names (operations) and values are
      #   request option grammars that convert a ruby hash of options
      #   into a JSON document.
      # @private
      def option_grammars
        @option_grammars ||= {}
      end

      protected

      # Enumerates through the operations specified in the API
      # configuration (yaml configuration file found in lib/api_config/)
      # and defines one request method per operation.
      def define_grammars
        api_config[:operations].each do |op|
          option_grammars[op[:method]] = OptionGrammar.customize(op[:inputs])
        end
      end

      def define_client_method method_name, operation
        add_client_request_method(method_name) do

          configure_request do |request, options|

            parser = self.class.option_grammars[method_name]
            x_amz_target = self.class::TARGET_PREFIX + operation

            request.headers["content-type"] = "application/x-amz-json-1.0"
            request.headers["x-amz-target"] = x_amz_target
            request.body = parser.to_json(options)

          end

          process_response do |response|
            response_body = response.http_response.body
            response_body = "{}" if response_body == ""
            data = ::JSON.load(response_body)
            MetaUtils.extend_method(response, :data) { data }
          end

          simulate_response do |response|
            data = {}
            MetaUtils.extend_method(response, :data) { data }
          end

        end
      end

      module ErrorParser

        def extract_error_details response
          if
            response.http_response.status >= 300 and
            body = response.http_response.body and
            json = (::JSON.load(body) rescue nil) and
            type = json["__type"] and
            matches = type.match(/\#(.*)$/)
          then
            code = matches[1]
            if code == 'RequestEntityTooLarge'
              message = 'Request body must be less than 1 MB'
            else
              message = json['message']
            end
            [code, message]
          end
        end

      end

    end
  end
end
