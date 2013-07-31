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

require 'spec_helper'

module Seahorse
  module Client
    module Plugins
      describe NetHttp do

        let(:config) do
          Configuration.new.tap do |config|
            NetHttp.new.add_options(config)
          end
        end

        describe '#add_options' do

          it 'adds a :http_proxy option without default' do
            expect(config.http_proxy).to eq(nil)
          end

          it 'adds a :http_open_timeout option with default' do
            expect(config.http_open_timeout).to eq(15)
          end

          it 'adds a :http_read_timeout option with default' do
            expect(config.http_read_timeout).to eq(60)
          end

          it 'adds a :http_idle_timeout option with default' do
            expect(config.http_idle_timeout).to eq(5)
          end

          it 'adds a :http_continue_timeout option with default' do
            expect(config.http_continue_timeout).to eq(1)
          end

          it 'adds a :http_wire_trace option with default' do
            expect(config.http_wire_trace).to eq(false)
          end

          it 'adds a :logger option without default' do
            expect(config.logger).to eq(nil)
          end

          it 'adds a :ssl_verify_peer option with default' do
            expect(config.ssl_verify_peer).to eq(true)
          end

          it 'adds a :ssl_ca_bundle option with default' do
            expect(config.ssl_ca_bundle).to eq(File.expand_path(File.join(
              File.dirname(__FILE__), '..', '..', '..', '..', 'ca-bundle-crt')))
          end

          it 'adds a :ssl_ca_directory option without default' do
            expect(config.ssl_ca_directory).to eq(nil)
          end

        end

        describe '#add_handlers' do

          it 'sets the :send hander to a NetHttp::Handler' do
            handlers = HandlerList.new
            NetHttp.new.add_handlers(handlers, config)
            expect(handlers.to_a).to eq([NetHttp::Handler])
          end

        end
      end
    end
  end
end
