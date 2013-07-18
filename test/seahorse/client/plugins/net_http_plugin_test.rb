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

require 'test_helper'

module Seahorse
  class Client
    module Plugins
      describe NetHttpPlugin do

        def config
          Configuration.new.tap do |config|
            NetHttpPlugin.add_configuration(config)
          end
        end

        describe '#add_configuration' do

          it 'adds a :http_open_timeout option with default' do
            config.http_open_timeout.must_equal(15)
          end

          it 'adds a :http_read_timeout option with default' do
            config.http_read_timeout.must_equal(60)
          end

          it 'adds a :http_idle_timeout option with default' do
            config.http_idle_timeout.must_equal(5)
          end

          it 'adds a :http_wire_trace option with default' do
            config.http_wire_trace.must_equal(false)
          end

          it 'adds a :http_proxy option without default' do
            config.http_proxy.must_equal(nil)
          end

          it 'adds a :ssl_verify_peer option with default' do
            config.ssl_verify_peer.must_equal(true)
          end

          it 'adds a :ssl_ca_bundle option without default' do
            config.ssl_ca_bundle.must_equal(nil)
          end

          it 'adds a :ssl_ca_directory option without default' do
            config.ssl_ca_directory.must_equal(nil)
          end

        end

        describe '#add_handlers' do

          it 'sets the :send hander to the NetHttpHandler' do
            handlers = HandlerList.new
            NetHttpPlugin.add_handlers(handlers, config)
            handlers.to_a.must_equal([NetHttpHandler])
          end

        end
      end
    end
  end
end
