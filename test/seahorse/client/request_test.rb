# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
    describe Request do

      def request params = {}
        @req ||= Request.new('operation_name', params)
      end

      describe '#operation_name' do

        it 'is set in the constructor' do
          req = Request.new('operation_name')
          req.operation_name.must_equal('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to an empty hash' do
          Request.new('operation_name').params.must_equal({})
        end

        it 'can be set in the constructor' do
          params = {}
          req = Request.new('operation_name', params)
          req.params.must_be_same_as(params)
        end

      end

      describe '#send' do

        it 'returns a Response object' do
          request.send.must_be_kind_of(Response)
        end

        it 'returns a new response everytime #send is called' do
          resp1 = request.send
          resp2 = request.send
          resp1.wont_be_same_as(resp2)
        end

        it 'does not fiddle with params, they are left alone' do
          # if sending the request attempts to mutate the params
          # hash, then a RuntimeError is raises, failing this spec
          params = {}.freeze
          request(params).send
        end

      end

      describe 'lifecycle events' do

        # standard lifecycle events emitted for a successful request
        def events
          [:validate, :build, :sign, :send, :parse, :success, :complete]
        end

        def setup
          # keep track of emitted events
          @emitted = []
          events.each do |event_name|
            request.on(event_name) { |*args| @emitted << event_name }
          end
        end

        it 'emits a sequence of standard events as a result of #send' do
          request.send
          @emitted.must_equal(events)
        end

        describe ':validate' do

          it 'emits the request parameters' do
            yielded = nil
            request.on(:validate) { |params| yielded = params }
            request.send
            yielded.must_be_same_as(request.params)
          end

          it 'stops emitting and raises if a listener raises' do
            request.on(:validate) { |*args| raise 'error' }
            assert_raises(RuntimeError) { request.send }
            @emitted.must_equal([:validate])
          end

        end

        describe ':build' do

          it 'emits a http request and the request params' do
            yielded = []
            request.on(:build) do |http_request, params|
              yielded << http_request
              yielded << params
            end
            request.send
            yielded[0].must_be_kind_of(Http::Request)
            yielded[1].must_be_same_as(request.params)
          end

          it 'stops emitting and raises if a listener raises' do
            request.on(:build) { |*args| raise 'error' }
            assert_raises(RuntimeError) { request.send }
            @emitted.must_equal([:validate, :build])
          end

        end

        describe ':sign' do

          it 'emits a http request' do
            yielded = nil
            request.on(:sign) { |http_request| yielded = http_request }
            request.send
            yielded.must_be_kind_of(Http::Request)
          end

          it 'stops emitting and raises if a listener raises' do
            request.on(:sign) { |*args| raise 'error' }
            assert_raises(RuntimeError) { request.send }
            @emitted.must_equal([:validate, :build, :sign])
          end

        end

      end

    end
  end
end
