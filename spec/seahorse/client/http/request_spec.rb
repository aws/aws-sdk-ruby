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
require 'stringio'

module Seahorse
  module Client
    module Http
      describe Request do

        def request(*args) Request.new(*args) end

        describe '#endpoint' do

          it 'defaults to nil' do
            expect(request.endpoint).to eq(nil)
          end

          it 'can be set in the constructor' do
            endpoint = Object.new
            req = request(endpoint: endpoint)
            expect(req.endpoint).to eq(endpoint)
          end

        end

        describe '#http_method' do

          it 'defaults to GET' do
            expect(request.http_method).to eq('GET')
          end

          it 'can be set in the constructor' do
            req = request(http_method: 'POST')
            expect(req.http_method).to eq('POST')
          end

        end

        describe '#path' do

          it 'defaults to GET' do
            expect(request.path).to eq('/')
          end

          it 'can be set in the constructor' do
            req = request(path: '/path?abc=xyz')
            expect(req.path).to eq('/path?abc=xyz')
          end

        end

        describe '#headers' do

          it 'defaults to a Http::Headers' do
            expect(request.headers).to be_kind_of(Headers)
          end

          it 'defaults to a empty hash' do
            expect(request.headers.to_h).to eq({})
          end

        end

        describe '#body' do

          it 'defaults to an empty IO-like object' do
            expect(request.body.read).to eq('')
          end

          it 'can be set in the constructor' do
            body = StringIO.new('body')
            expect(request(body: body).body).to be(body)
          end

          it 'can be set as a string in the constructor' do
            req = request(body: 'body')
            expect(req.body).to be_a(PlainStringIO)
            expect(req.body.read).to eq('body')
          end

          it 'can be set as a string in accessor' do
            req = request
            req.body = 'body'
            expect(req.body).to be_a(PlainStringIO)
            expect(req.body.read).to eq('body')
          end

        end
      end
    end
  end
end
