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

require 'aws/core/rest_client/input_handler'
require 'aws/core/rest_client/output_handler'

module AWS
  module Core
    module RESTClient

      # @private
      def self.extended base
        base.send(:include, ErrorParser)
        base.send(:define_handlers)
      end

      # @private
      def input_handlers
        @input_handlers ||= {}
      end

      # @private
      def output_handlers
        @output_handlers ||= {}
      end

      protected

      # Enumerates through the operations specified in the API
      # configuration (yaml configuration file found in lib/api_config/)
      # and defines a request and a response handler for each operation.
      def define_handlers
        namespace = api_config[:namespace]
        api_config[:operations].each_pair do |method,operation|
          input_handlers[method] = InputHandler.new(namespace, operation)
          output_handlers[method] = OutputHandler.new(operation)
        end
      end

      def define_client_method method_name, operation_name
        add_client_request_method(method_name) do

          configure_request do |request, request_options|
            handler = self.class.input_handlers[method_name]
            handler.populate_request(request, request_options)
          end

          process_response do |response|
            handler = self.class.output_handlers[method_name]
            response.data = handler.extract_data(response)
          end

          simulate_response do |response|
            handler = self.class.output_handlers[method_name]
            response.data = handler.simulate
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
