# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
require 'aws/core/http/curb_handler'

module AWS::Core
  module Http
    describe CurbHandler do

      # TODO: figure out how to re-enable these tests with the
      # Curl::Multi implementation; this seems hard because it now
      # uses a background thread to do all processing

#         let(:fake_curl) { 
#           fake = double('fake-curl').as_null_object 
#           fake.stub(:body_str).and_return('fake body')
#           fake.stub(:response_code).and_return(123)
#           fake
#         }

#         let(:handler) { CurbHandler.new }

#         let(:request) { 
#           Request.new(
#                       :host => 'hostname.com',
#                       :path => '/some/path',
#                       :body => 'request body',
#                       :headers => { 'header-name' => 'header value' }
#                       )
#         }

#         let(:response) { Response.new }

#         before(:each) do
#           Curl::Easy.stub(:new).and_return(fake_curl)
#         end
      
#         it 'should use curl easy' do
#           Curl::Easy.should_receive(:new)
#           handler.handle(request, response)
#         end
      
#         it 'should set request headers' do
#           fake_curl.should_recieve(:headers=).with(request.headers)
#           handler.handle(request, response)
#         end

#         it 'should populate response body' do
#           handler.handle(request, response)
#           response.body.should == 'fake body'
#         end

#         it 'should populate response status' do
#           handler.handle(request, response)
#           response.status.should == 123
#         end

#         it 'should set post data' do
#           fake_curl.should_receive(:post_body=).with('request body')
#           request.http_method = 'POST'
#           handler.handle(request, response)
#         end

#         it 'should set put data' do
#           fake_curl.should_receive(:put_data=).with('request body')
#           request.http_method = 'PUT'
#           handler.handle(request, response)
#         end

#         it 'should set head mode for HEAD' do
#           fake_curl.should_receive(:head=).with(true)
#           request.http_method = 'HEAD'
#           handler.handle(request, response)
#         end

#         it 'should set delete mode for DELETE' do
#           fake_curl.should_receive(:delete=).with(true)
#           request.http_method = 'DELETE'
#           handler.handle(request, response)
#         end

#         it 'should raise an error for invalid request method' do
#           request.http_method = 'FOO'
#           lambda {
#             handler.handle(request, response)
#           }.should raise_error(/FOO/)
#         end

#         it 'should populate response headers' do
#           fake_curl.stub(:on_header).and_yield('foo: bar').and_yield('abc: xyz')
#           handler.handle(request, response)
#           response.headers.should == { 'foo' => 'bar', 'abc' => 'xyz' }
#         end

    end
  end
end
