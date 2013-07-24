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
    describe Response do

      describe '#context' do

        it 'defaults to a new context' do
          Response.new.context.must_be_kind_of(RequestContext)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new
          Response.new(context: context).context.must_be_same_as(context)
        end

      end

      describe '#http_request' do

        it 'returns the context #http_request' do
          http_request = HttpRequest.new
          context = RequestContext.new(http_request: http_request)
          resp = Response.new(context: context)
          resp.http_request.must_be_same_as(http_request)
        end

      end

      describe '#http_response' do

        it 'returns the context #http_response' do
          http_response = HttpResponse.new
          context = RequestContext.new(http_response: http_response)
          resp = Response.new(context: context)
          resp.http_response.must_be_same_as(http_response)
        end

      end

      describe '#completed?' do

        it 'defaults to false' do
          Response.new.complete?.must_equal(false)
        end

        it 'returns true if the response has been signaled' do
          resp = Response.new
          resp.signal_complete
          resp.complete?.must_equal(true)
        end

      end

      describe '#on_complete' do

        it 'registers a callback that is triggered upon completion' do
          called = false
          resp = Response.new
          resp.on_complete { called = true }
          resp.signal_complete
          called.must_equal(true)
        end

        it 'does not trigger callbacks when not signaled' do
          called = false
          resp = Response.new
          resp.on_complete { called = true }
          #resp.signal_complete
          called.must_equal(false)
        end

        it 'triggers directly if the response has already been signaled' do
          called = false
          resp = Response.new
          resp.signal_complete
          resp.on_complete { called = true }
          called.must_equal(true)
        end

        it 'accepts multiple callbacks' do
          count = 0
          resp = Response.new
          3.times { resp.on_complete { count += 1 }}
          resp.signal_complete
          count.must_equal(3)
        end

        it 'triggers callbacks with FIFO ordering' do
          order = []
          resp = Response.new
          resp.on_complete { order << 1 }
          resp.on_complete { order << 2 }
          resp.on_complete { order << 3 }
          resp.signal_complete
          order.must_equal([1, 2, 3])
        end

        it 'passes the response to the callback when arg accepted' do
          callback_arg = nil
          resp = Response.new
          resp.on_complete { |response| callback_arg = response }
          resp.signal_complete
          callback_arg.must_be_same_as(resp)
        end

      end

      describe '#signal_complete' do

        it 'returns self' do
          resp = Response.new
          resp.signal_complete.must_be_same_as(resp)
        end

      end
    end
  end
end
