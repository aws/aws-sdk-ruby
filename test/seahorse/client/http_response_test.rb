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
    describe HttpResponse do

      describe '#status_code' do

        it 'defaults to nil' do
          HttpResponse.new.status_code.must_equal(nil)
        end

        it 'can be set in the constructor' do
          HttpResponse.new(status_code: 200).status_code.must_equal(200)
        end

        it 'is mutable' do
          resp = HttpResponse.new
          resp.status_code = 500
          resp.status_code.must_equal(500)
        end

      end

      describe '#headers' do

        it 'is a HeaderHash' do
          HttpResponse.new.headers.must_be_kind_of(HeaderHash)
        end

        it 'defaults to a empty hash' do
          HttpResponse.new.headers.to_h.must_equal({})
        end

        it 'can be set in the constructor' do
          headers = HeaderHash.new
          response = HttpResponse.new(headers: headers)
          response.headers.must_be_same_as(headers)
        end

        it 'can be set' do
          headers = HeaderHash.new
          response = HttpResponse.new
          response.headers = headers
          response.headers.must_be_same_as(headers)
        end

      end

      describe '#body' do

        it 'defaults to an empty string' do
          HttpResponse.new.body.must_equal('')
        end

        it 'can be set in the constructor' do
          HttpResponse.new(body: 'body').body.must_equal('body')
        end

        it 'can be set' do
          response = HttpResponse.new
          response.body = 'body'
          response.body.must_equal('body')
        end

      end

    end
  end
end
