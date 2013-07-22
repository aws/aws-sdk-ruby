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
        @endpoint = Endpoint.new('http://abc.xyz')
        @http_method = 'GET'
        @path = '/path?querystring'
        @headers = { 'Header' => 'Value' }
        @body = StringIO.new('body')
        HttpRequest.new(@endpoint, @http_method, @path, @headers, @body)
      end

      it 'provides access the endpoint' do
        request.endpoint.must_be_same_as(@endpoint)
      end

      it 'provides access the http_method' do
        request.http_method.must_be_same_as(@http_method)
      end

      it 'provides access the path' do
        request.path.must_be_same_as(@path)
      end

      it 'provides access the headers' do
        request.headers.must_be_same_as(@headers)
      end

      it 'provides access the body' do
        request.body.must_be_same_as(@body)
      end

    end
  end
end
