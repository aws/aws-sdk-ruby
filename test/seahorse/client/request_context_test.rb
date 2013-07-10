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

      describe '#params' do

        it 'defaults to a empty hash' do
          RequestContext.new.params.must_equal({})
        end

        it 'can be set in the constructor' do
          params = Object.new
          RequestContext.new(:params => params).params.must_be_same_as(params)
        end

      end

      describe '#operation_name' do

        it 'defaults to nil' do
          RequestContext.new.operation_name.must_equal(nil)
        end

        it 'can be set in the constructor' do
          context = RequestContext.new(:operation_name => 'operation_name')
          context.operation_name.must_equal('operation_name')
        end

      end

      describe '#endpoint' do

        it 'defaults to nil' do
          RequestContext.new.endpoint.must_equal(nil)
        end

        it 'can be set in the constructor' do
          endpoint = Object.new
          context = RequestContext.new(:endpoint => endpoint)
          context.endpoint.must_be_same_as(endpoint)
        end

      end

      describe '#uri' do

        it 'defaults to /' do
          RequestContext.new.uri.must_equal('/')
        end

        it 'can be set in the constructor' do
          RequestContext.new(:uri => '/uri').uri.must_equal('/uri')
        end

      end

      describe '#headers' do

        it 'is a Http::HeaderHash' do
          RequestContext.new.headers.must_be_kind_of(Http::HeaderHash)
        end

        it 'defaults to a empty hash' do
          RequestContext.new.headers.to_h.must_equal({})
        end

        it 'can be set in the constructor' do
          headers = Object.new
          context = RequestContext.new(:headers => headers)
          context.headers.must_be_same_as(headers)
        end

      end

      describe '#body' do

        it 'responds to #read and #rewind' do
          RequestContext.new.body.must_respond_to(:read)
          RequestContext.new.body.must_respond_to(:rewind)
        end

        it 'defaults to a empty object' do
          RequestContext.new.body.read.must_equal('')
        end

        it 'can be set in the constructor' do
          body = Object.new
          RequestContext.new(:body => body).body.must_be_same_as(body)
        end

      end

    end
  end
end
