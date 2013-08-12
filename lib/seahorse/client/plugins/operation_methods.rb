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

module Seahorse
  module Client
    module Plugins

      # Defines a helper method for each API operation that builds and
      # sends the named request.
      #
      # # Helper Methods
      #
      # This plugin adds a helper method that lists the availalbe API
      # operations.
      #
      #     client.operation_names
      #     #=> [:api_operation_name1, :api_operation_name2, ...]
      #
      # Additionally, it adds a helper method for each operation.  This helper
      # handles building and sending the appropriate {Request}.
      #
      #     # without OperationMethods plugin
      #     req = client.build_request(:api_operation_name, request_params)
      #     resp = req.send_request
      #
      #     # using the helper method defined by OperationMethods
      #     resp = client.api_operation_name(request_params)
      #
      class OperationMethods < Plugin

        initialize_client do |client|
          unless client.respond_to?(:operation_names)
            names = client.config.api.operations.keys

            client.class.send(:define_method, :operation_names) { names }

            names.each do |name|
              client.class.send(:define_method, name) do |*args, &block|
                build_request(name, *args, &block).send_request
              end
            end

          end
        end

      end
    end
  end
end
