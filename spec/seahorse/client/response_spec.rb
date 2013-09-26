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
    describe Response do

      describe '#context' do

        it 'defaults to a new context' do
          expect(Response.new.context).to be_kind_of(RequestContext)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new
          expect(Response.new(context: context).context).to be(context)
        end

      end

      describe '#http_request' do

        it 'returns the context #http_request' do
          http_request = Http::Request.new
          context = RequestContext.new(http_request: http_request)
          resp = Response.new(context: context)
          expect(resp.http_request).to be(http_request)
        end

      end

      describe '#http_response' do

        it 'returns the context #http_response' do
          http_response = Http::Response.new
          context = RequestContext.new(http_response: http_response)
          resp = Response.new(context: context)
          expect(resp.http_response).to be(http_response)
        end

      end

      describe '#completed?' do

        it 'defaults to false' do
          expect(Response.new.complete?).to be(false)
        end

        it 'returns true if the response has been signaled' do
          resp = Response.new
          resp.signal_complete
          expect(resp.complete?).to be(true)
        end

      end

      describe '#on_complete' do

        it 'returns self' do
          resp = Response.new
          result = resp.on_complete { 123 }
          expect(result).to be(resp)
        end

        it 'registers a callback that is triggered upon completion' do
          called = false
          resp = Response.new
          resp.on_complete { called = true }
          resp.signal_complete
          expect(called).to be(true)
        end

        it 'does not trigger callbacks when not signaled' do
          called = false
          resp = Response.new
          resp.on_complete { called = true }
          #resp.signal_complete
          expect(called).to be(false)
        end

        it 'triggers directly if the response has already been signaled' do
          called = false
          resp = Response.new
          resp.signal_complete
          resp.on_complete { called = true }
          expect(called).to be(true)
        end

        it 'accepts multiple callbacks' do
          count = 0
          resp = Response.new
          3.times { resp.on_complete { count += 1 }}
          resp.signal_complete
          expect(count).to eq(3)
        end

        it 'triggers callbacks with FIFO ordering' do
          order = []
          resp = Response.new
          resp.on_complete { order << 1 }
          resp.on_complete { order << 2 }
          resp.on_complete { order << 3 }
          resp.signal_complete
          expect(order).to eq([1, 2, 3])
        end

        it 'passes the response to the callback when arg accepted' do
          callback_arg = nil
          resp = Response.new
          resp.on_complete { |response| callback_arg = response }
          resp.signal_complete
          expect(callback_arg).to be(resp)
        end

        it 'accepts an optional range that limits if it is triggered' do
          a_triggered = false
          b_triggered = false
          resp = Response.new
          resp.http_response.status_code = 404
          resp.on_complete(400..499) { |resp| a_triggered = true }
          resp.on_complete(200..299) { |resp| b_triggered = true }
          resp.signal_complete
          expect(a_triggered).to be(true)
          expect(b_triggered).to be(false)
        end

      end

      describe '#signal_complete' do

        it 'returns self' do
          resp = Response.new
          expect(resp.signal_complete).to be(resp)
        end

      end
    end
  end
end
