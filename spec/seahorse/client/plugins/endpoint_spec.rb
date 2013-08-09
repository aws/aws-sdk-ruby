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
        let(:client_class) do
          Client::Base.define api: {
            'endpoint' => 'foo.com',
            'plugins' => [Endpoint, DummySendPlugin]
          }
        end

        def client(opts = {}) @client ||= client_class.new(opts) end

        it 'adds an #endpoint option to config' do
          expect(client.config.endpoint).to eq('foo.com')
        end

        it 'adds an #ssl_default option to config' do
          expect(client.config.ssl_default).to be(true)
        end

        it 'populates the http request endpoint' do
          resp = client.build_request('operation').send_request
          expect(resp.context.http_request.endpoint).to eq('https://foo.com')
        end

        it 'defaults to http when ssl_default is false' do
          client = client(ssl_default: false)
          resp = client.build_request('operation').send_request
          expect(resp.context.http_request.endpoint).to eq('http://foo.com')
       end

      end
    end
  end
end
