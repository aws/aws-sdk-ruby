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
    describe RequestContext do

      describe '#operation_name' do

        it 'defaults to nil' do
          expect(RequestContext.new.operation_name).to be(nil)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new(operation_name: 'operation_name')
          expect(context.operation_name).to eq('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to a empty hash' do
          expect(RequestContext.new.params).to eq({})
        end

        it 'can be set in the constructor' do
          params = Object.new
          expect(RequestContext.new(params: params).params).to be(params)
        end

      end

      describe '#config' do

        it 'defaults to nil' do
          expect(RequestContext.new.config).to be(nil)
        end

        it 'can be set in the constructor' do
          config = Object.new
          expect(RequestContext.new(config: config).config).to be(config)
        end

      end

      describe '#http_request' do

        it 'defaults to a Http::Request object' do
          expect(RequestContext.new.http_request).to be_kind_of(Http::Request)
        end

        it 'can be set in the constructor' do
          http_req = Object.new
          context = RequestContext.new(http_request: http_req)
          expect(context.http_request).to be(http_req)
        end

      end

      describe '#http_response' do

        it 'defaults to a Http::Response object' do
          expect(RequestContext.new.http_response).to be_kind_of(Http::Response)
        end

        it 'can be set in the constructor' do
          http_resp = Object.new
          context = RequestContext.new(http_response: http_resp)
          expect(context.http_response).to be(http_resp)
        end

      end

      describe 'metadata' do

        it 'returns nil for non-set keys' do
          context = RequestContext.new
          expect(context[:color]).to eq(nil)
        end

        it 'can be set via #[]=' do
          context = RequestContext.new
          context[:color] = 'red'
          expect(context[:color]).to eq('red')
        end

      end
    end
  end
end
