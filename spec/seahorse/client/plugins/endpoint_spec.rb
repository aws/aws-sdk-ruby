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
      describe Endpoint do

        let(:api) { double('api', endpoint: 'foo.com') }

        let(:handlers) { HandlerList.new }

        def apply_plugin!(options = {})

          config = Configuration.new(options.merge(api: api))
          config.add_option(:api)

          handlers.add(DummySendHandler, priority: :send)

          plugin = Plugins::Endpoint.new
          plugin.add_options(config)
          plugin.add_handlers(handlers, config)
          config

        end

        def handle_request!(options = {})
          config = apply_plugin!(options)
          context = RequestContext.new(config: config)
          handlers.to_stack.call(context)
        end

        it 'adds an #endpoint option to config' do
          config = apply_plugin!
          expect(config.endpoint).to eq('foo.com')
        end

        it 'adds an #ssl_default option to config' do
          config = apply_plugin!
          expect(config.ssl_default).to be(true)
        end

        it 'populates the http request endpoint' do
          resp = handle_request!
          expect(resp.context.http_request.endpoint).to eq('https://foo.com')
        end

        it 'defaults to http when ssl_default is false' do
          resp = handle_request!(ssl_default: false)
          expect(resp.context.http_request.endpoint).to eq('http://foo.com')
       end

      end
    end
  end
end
