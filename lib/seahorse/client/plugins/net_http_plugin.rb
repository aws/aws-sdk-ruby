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
  class Client
    module Plugins
      module NetHttpPlugin

        OPTIONS = {
          http_open_timeout: 15,
          http_read_timeout: 60,
          http_idle_timeout: 5,
          http_wire_trace: false,
          http_proxy: nil,
          ssl_verify_peer: true,
          ssl_ca_bundle: nil,
          ssl_ca_directory: nil,
        }

        # @param [Configuration] config
        # @return [void]
        def self.add_configuration(config)
          OPTIONS.each do |opt_name, default_value|
            config.add_option(opt_name, default_value)
          end
        end

        # @param [HandlerList] handlers
        # @param [Configuration] config
        # @return [void]
        def self.add_handlers(handlers, config)
          handlers.add(NetHttpHandler, priority: :send)
        end

      end
    end
  end
end
