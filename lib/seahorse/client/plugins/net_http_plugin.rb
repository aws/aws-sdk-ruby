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

        # @param [Configuration] config
        # @return [void]
        def self.add_configuration(config)
          config.add_option(:http_open_timeout, 15)
          config.add_option(:http_read_timeout, 60)
          # TODO : add support for expect continue header and timeouts
          #config.add_option(:http_continue_timeout, 1)
          #config.add_option(:http_continue_threshold, false)
          config.add_option(:http_idle_timeout, 5)
          config.add_option(:http_wire_trace, false)
          config.add_option(:http_proxy, nil)
          config.add_option(:ssl_verify_peer, true)
          config.add_option(:ssl_ca_bundle, nil)
          config.add_option(:ssl_ca_directory, nil)
        end

        # @param [HandlerList] handlers
        # @param [Configuration] config
        # @return [void]
        def self.add_handlers(handlers)
          handlers.add(NetHttpHandler, priority: :send)
        end

      end
    end
  end
end
