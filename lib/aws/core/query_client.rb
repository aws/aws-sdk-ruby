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

#me Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS
  module Core

    # When a client class extends this module, its API configuration
    # is parsed.  For each operation in the API configuration, one
    # client method is added.
    #
    # Clients extending Query all have in common their method
    # of serializing request (input) paramters and parsing response
    # (output) XML.
    #
    module QueryClient

      # @private
      def self.extended base
        base.send(:include, ErrorParser)
        base.send(:define_parsers)
      end

      # @return [Hash<Symbol,OptionGrammar>] Returns a hash option
      #   parsers.  Hash keys are client method names and hash
      #   values are {OptionGrammar} objects.
      # @private
      def option_parsers
        @option_parsers ||= {}
      end

      # @return [Hash<Symbol,XML::Parser>] Returns a hash of xml
      #   parsers.  Hash keys are client method names and hash
      #   values are {XML::Parser} objects.
      # @private
      def xml_parsers
        @xml_parsers ||= {}
      end

      protected

      # Enumerates through the operations specified in the API
      # configuration (yaml configuration file found in lib/api_config/)
      # and defines one request method per operation.
      def define_parsers
        api_config[:operations].each do |op|

          method_name = op[:method]

          option_parsers[method_name] = OptionGrammar.customize(op[:inputs])
          xml_parsers[method_name] = XML::Parser.new(op[:outputs])

        end
      end

      def define_client_method method_name, operation_name
        add_client_request_method(method_name) do

          configure_request do |request, options|

            now = Time.now.utc.strftime('%Y-%m-%dT%H:%M:%SZ')

            request.headers['Content-Type'] =
              "application/x-www-form-urlencoded; charset=utf-8"

            request.add_param 'Timestamp', now
            request.add_param 'Version', self.class::API_VERSION
            request.add_param 'Action', operation_name

            parser = self.class.option_parsers[method_name]
            parser.request_params(options).each do |param|
              request.add_param(param)
            end

          end

          process_response do |response|
            parser = self.class.xml_parsers[method_name]
            response.data = parser.parse(response.http_response.body)
          end

          simulate_response do |response|
            parser = self.class.xml_parsers[method_name]
            response.data = parser.simulate
          end

        end
      end

      module ErrorParser

        protected

        def extract_error_details response
          if
            response.http_response.status >= 300 and
            body = response.http_response.body and
            error = errors_module::GRAMMAR.parse(body) and
            error[:code]
          then
            [error[:code], error[:message]]
          end
        end

      end

    end
  end
end
