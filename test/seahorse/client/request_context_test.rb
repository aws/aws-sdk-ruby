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

      describe '#http_endpoint' do

        it 'defaults to nil' do
          RequestContext.new.http_endpoint.must_equal(nil)
        end

        it 'can be set in the constructor' do
          endpoint = Object.new
          context = RequestContext.new(http_endpoint: endpoint)
          context.http_endpoint.must_be_same_as(endpoint)
        end

        it 'can be set' do
          context = RequestContext.new
          context.http_endpoint = 'endpoint'
          context.http_endpoint.must_equal('endpoint')
        end

      end

      describe '#http_method' do

        it 'defaults to GET' do
          RequestContext.new.http_method.must_equal('GET')
        end

        it 'can be set in the constructor' do
          RequestContext.new(http_method: 'POST').http_method.must_equal('POST')
        end

        it 'can be set' do
          context = RequestContext.new
          context.http_method = 'PUT'
          context.http_method.must_equal('PUT')
        end

      end

      describe '#http_uri' do

        it 'defaults to /' do
          RequestContext.new.http_uri.must_equal('/')
        end

        it 'can be set in the constructor' do
          RequestContext.new(http_uri: '/uri').http_uri.must_equal('/uri')
        end

        it 'can be set' do
          context = RequestContext.new
          context.http_uri = '/uri'
          context.http_uri.must_equal('/uri')
        end

      end

      describe '#http_headers' do

        it 'is a HeaderHash' do
          RequestContext.new.http_headers.must_be_kind_of(HeaderHash)
        end

        it 'defaults to a empty hash' do
          RequestContext.new.http_headers.to_h.must_equal({})
        end

        it 'can be set in the constructor' do
          headers = HeaderHash.new
          context = RequestContext.new(http_headers: headers)
          context.http_headers.must_be_same_as(headers)
        end

        it 'can be set' do
          headers = HeaderHash.new
          context = RequestContext.new
          context.http_headers = headers
          context.http_headers.must_be_same_as(headers)
        end

      end

      describe '#http_body' do

        it 'responds to #read and #rewind' do
          RequestContext.new.http_body.must_respond_to(:read)
          RequestContext.new.http_body.must_respond_to(:rewind)
        end

        it 'defaults to a empty object' do
          RequestContext.new.http_body.read.must_equal('')
        end

        it 'can be set in the constructor' do
          body = Object.new
          RequestContext.new(http_body: body).http_body.must_be_same_as(body)
        end

        it 'can be set' do
          body = Object.new
          context = RequestContext.new
          context.http_body = body
          context.http_body.must_be_same_as(body)
        end

      end

      describe '#http_request' do

        def context
          @context ||= RequestContext.new(:http_endpoint => 'endpoint')
        end

        it 'returns a HttpRequest object' do
          context.http_request.must_be_kind_of(HttpRequest)
        end

        it 'populates the #endpoint' do
          context.http_request.endpoint.must_be_same_as(context.http_endpoint)
        end

        it 'populates the #http_method' do
          context.http_request.http_method.must_be_same_as(context.http_method)
        end

        it 'populates the #path' do
          context.http_request.path.must_be_same_as(context.http_uri)
        end

        it 'populates the #headers' do
          context.http_request.headers.must_be_same_as(context.http_headers)
        end

        it 'populates the #body' do
          context.http_request.body.must_be_same_as(context.http_body)
        end


      end
    end
  end
end
