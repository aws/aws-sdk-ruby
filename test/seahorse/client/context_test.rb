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
    describe Context do

      describe '#operation_name' do

        it 'defaults to nil' do
          Context.new.operation_name.must_equal(nil)
        end

        it 'can be set in the constructor' do
          context = Context.new(:operation_name => 'operation_name')
          context.operation_name.must_equal('operation_name')
        end

      end

      describe '#params' do

        it 'defaults to a empty hash' do
          Context.new.params.must_equal({})
        end

        it 'can be set in the constructor' do
          params = Object.new
          Context.new(:params => params).params.must_be_same_as(params)
        end

      end

      describe '#config' do

        it 'defaults to nil' do
          Context.new.config.must_equal(nil)
        end

        it 'can be set in the constructor' do
          config = Object.new
          Context.new(:config => config).config.must_be_same_as(config)
        end

      end

      describe '#events' do

        it 'defaults to a new EventEmitter' do
          events = Object.new
          EventEmitter.stub(:new, events) do
            Context.new.event_emitter.must_be_same_as(events)
          end
        end

        it 'can be set in the constructor' do
          events = Object.new
          context = Context.new(:event_emitter => events)
          context.event_emitter.must_be_same_as(events)
        end

        it 'can be set' do
          events = Object.new
          context = Context.new
          context.event_emitter = events
          context.event_emitter.must_be_same_as(events)
        end

      end

      describe '#http_endpoint' do

        it 'defaults to nil' do
          Context.new.http_endpoint.must_equal(nil)
        end

        it 'can be set in the constructor' do
          endpoint = Object.new
          context = Context.new(:http_endpoint => endpoint)
          context.http_endpoint.must_be_same_as(endpoint)
        end

        it 'can be set' do
          context = Context.new
          context.http_endpoint = 'endpoint'
          context.http_endpoint.must_equal('endpoint')
        end

      end

      describe '#http_method' do

        it 'defaults to GET' do
          Context.new.http_method.must_equal('GET')
        end

        it 'can be set in the constructor' do
          Context.new(:http_method => 'POST').http_method.must_equal('POST')
        end

        it 'can be set' do
          context = Context.new
          context.http_method = 'PUT'
          context.http_method.must_equal('PUT')
        end

      end

      describe '#http_uri' do

        it 'defaults to /' do
          Context.new.http_uri.must_equal('/')
        end

        it 'can be set in the constructor' do
          Context.new(:http_uri => '/uri').http_uri.must_equal('/uri')
        end

        it 'can be set' do
          context = Context.new
          context.http_uri = '/uri'
          context.http_uri.must_equal('/uri')
        end

      end

      describe '#http_headers' do

        it 'is a HeaderHash' do
          Context.new.http_headers.must_be_kind_of(HeaderHash)
        end

        it 'defaults to a empty hash' do
          Context.new.http_headers.to_h.must_equal({})
        end

        it 'can be set in the constructor' do
          headers = Object.new
          context = Context.new(:http_headers => headers)
          context.http_headers.must_be_same_as(headers)
        end

        it 'can be set' do
          headers = Object.new
          context = Context.new
          context.http_headers = headers
          context.http_headers.must_be_same_as(headers)
        end

      end

      describe '#http_body' do

        it 'responds to #read and #rewind' do
          Context.new.http_body.must_respond_to(:read)
          Context.new.http_body.must_respond_to(:rewind)
        end

        it 'defaults to a empty object' do
          Context.new.http_body.read.must_equal('')
        end

        it 'can be set in the constructor' do
          body = Object.new
          Context.new(:http_body => body).http_body.must_be_same_as(body)
        end

        it 'can be set' do
          body = Object.new
          context = Context.new
          context.http_body = body
          context.http_body.must_be_same_as(body)
        end

      end
    end
  end
end
