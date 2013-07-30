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

        def request
          @request ||= Request.new
        end

        describe '#endpoint' do

          it 'defaults to nil' do
            expect(Request.new.endpoint).to eq(nil)
          end

          it 'can be set in the constructor' do
            endpoint = Object.new
            req = Request.new(endpoint: endpoint)
            expect(req.endpoint).to eq(endpoint)
          end

        end

        describe '#http_method' do

          it 'defaults to GET' do
            expect(Request.new.http_method).to eq('GET')
          end

          it 'can be set in the constructor' do
            req = Request.new(http_method: 'POST')
            expect(req.http_method).to eq('POST')
          end

        end

        describe '#path' do

          it 'defaults to GET' do
            expect(Request.new.path).to eq('/')
          end

          it 'can be set in the constructor' do
            req = Request.new(path: '/path?abc=xyz')
            expect(req.path).to eq('/path?abc=xyz')
          end

        end

        describe '#headers' do

          it 'defaults to a Http::Headers' do
            expect(Request.new.headers).to be_kind_of(Headers)
          end

          it 'defaults to a empty hash' do
            expect(Request.new.headers.to_h).to eq({})
          end

        end

        describe '#body' do

          it 'defaults to an empty IO-like object' do
            expect(Request.new.body.read).to eq('')
          end

          it 'can be set in the constructor' do
            body = StringIO.new('body')
            expect(Request.new(body: body).body).to be(body)
          end

        end
      end
    end
  end
end
