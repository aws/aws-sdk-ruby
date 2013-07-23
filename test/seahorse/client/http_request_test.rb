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
require 'stringio'

module Seahorse
  class Client
    describe HttpRequest do

      def request
        @request ||= HttpRequest.new
      end

      describe '#endpoint' do

        it 'defaults to nil' do
          HttpRequest.new.endpoint.must_equal(nil)
        end

        it 'can be set in the constructor' do
          endpoint = Object.new
          req = HttpRequest.new(endpoint: endpoint)
          req.endpoint.must_equal(endpoint)
        end

      end

      describe '#http_method' do

        it 'defaults to GET' do
          HttpRequest.new.http_method.must_equal('GET')
        end

        it 'can be set in the constructor' do
          req = HttpRequest.new(http_method: 'POST')
          req.http_method.must_equal('POST')
        end

      end

      describe '#path' do

        it 'defaults to GET' do
          HttpRequest.new.path.must_equal('/')
        end

        it 'can be set in the constructor' do
          req = HttpRequest.new(path: '/path?abc=xyz')
          req.path.must_equal('/path?abc=xyz')
        end

      end

      describe '#headers' do

        it 'defaults to a HeaderHash' do
          HttpRequest.new.headers.must_be_kind_of(HeaderHash)
        end

        it 'defaults to a empty hash' do
          HttpRequest.new.headers.to_h.must_equal({})
        end

      end

      describe '#body' do

        it 'defaults to an empty IO-like object' do
          HttpRequest.new.body.read.must_equal('')
        end

        it 'can be set in the constructor' do
          body = StringIO.new('body')
          HttpRequest.new(body: body).body.must_be_same_as(body)
        end

      end
    end
  end
end
