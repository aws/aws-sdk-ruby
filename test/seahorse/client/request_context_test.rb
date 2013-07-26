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
  module Client
    describe RequestContext do

      describe '#operation_name' do

        it 'defaults to nil' do
          RequestContext.new.operation_name.must_equal(nil)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new(operation_name: 'operation_name')
          context.operation_name.must_equal('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to a empty hash' do
          RequestContext.new.params.must_equal({})
        end

        it 'can be set in the constructor' do
          params = Object.new
          RequestContext.new(params: params).params.must_be_same_as(params)
        end

      end

      describe '#config' do

        it 'defaults to nil' do
          RequestContext.new.config.must_equal(nil)
        end

        it 'can be set in the constructor' do
          config = Object.new
          RequestContext.new(config: config).config.must_be_same_as(config)
        end

      end

      describe '#events' do

        it 'defaults to a new EventEmitter' do
          events = Object.new
          EventEmitter.stub(:new, events) do
            RequestContext.new.events.must_be_same_as(events)
          end
        end

        it 'can be set in the constructor' do
          events = Object.new
          context = RequestContext.new(events: events)
          context.events.must_be_same_as(events)
        end

        it 'can be set' do
          events = Object.new
          context = RequestContext.new
          context.events = events
          context.events.must_be_same_as(events)
        end

      end

      describe '#http_request' do

        it 'defaults to a Http::Request object' do
          RequestContext.new.http_request.must_be_kind_of(Http::Request)
        end

        it 'can be set in the constructor' do
          http_req = Object.new
          context = RequestContext.new(http_request: http_req)
          context.http_request.must_be_same_as(http_req)
        end

      end

      describe '#http_response' do

        it 'defaults to a Http::Response object' do
          RequestContext.new.http_response.must_be_kind_of(Http::Response)
        end

        it 'can be set in the constructor' do
          http_resp = Object.new
          context = RequestContext.new(http_response: http_resp)
          context.http_response.must_be_same_as(http_resp)
        end

      end

      describe 'metadata' do

        it 'returns nil for non-set keys' do
          context = RequestContext.new
          context[:color].must_equal(nil)
        end

        it 'can be set via #[]=' do
          context = RequestContext.new
          context[:color] = 'red'
          context[:color].must_equal('red')
        end

      end

      describe '#on and #emit' do

        it 'registers an event listener on #events' do
          emitted = false
          context = RequestContext.new
          context.on(:event_name) { emitted = true }
          context.emit(:event_name)
          emitted.must_equal(true)
        end

      end

    end
  end
end
