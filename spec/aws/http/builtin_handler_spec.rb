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
require 'aws/http/builtin_handler'

module AWS
  module Http
    describe BuiltinHandler do

      let(:request) { Request.new }

      let(:response) { Response.new }

      let(:handler) { BuiltinHandler.new }

      let(:net_http_response) {
        double('net-http-repsonse',
         :to_hash => { 'header_name' => 'header_value' },
         :body => 'response body',
         :code => 123)
      }

      let(:net_http_request) {
        net_http_req = double('net-http-request')
        net_http_req.stub(:verify_mode=)
        net_http_req.stub(:use_ssl=)
        net_http_req.stub(:cert_store=)
        net_http_req.stub(:start).and_yield
        net_http_req.stub(:request).
          and_yield(net_http_response).
          and_return(net_http_response)
        net_http_req
      }

      let(:handle) { handler.handle(request, response) }

      before(:each) do
        Net::HTTP.stub(:new).and_return(net_http_request)
      end

      it_behaves_like 'a blocking HTTP handler'

      context '#handle' do

        it 'should supply a default empty content type header' do
          net_http_request.should_receive(:request).
            with do |request, body|
            request["content-type"].should == ""
            net_http_response
          end
          handle
        end

        it 'should use the provided headers' do
          request.stub(:headers).and_return("content-type" => "image/jpeg")
          net_http_request.should_receive(:request).
            with do |request, body|
            request["content-type"].should == "image/jpeg"
            net_http_response
          end
          handler.handle(request, response)
        end

        it 'should set the response status from the http response' do
          handler.handle(request, response)
          response.status.should == 123
        end

        it 'should set the response body from the http response' do
          handler.handle(request, response)
          response.body.should == 'response body'
        end

        it 'should set the response headers' do
          handler.handle(request, response)
          response.headers.should == { 'header_name' => 'header_value' }
        end

        context 'with ssl' do
          
          it 'should set the port to 443 when use_ssl? is true' do
            Net::HTTP.should_receive(:new).with(anything(), 443).
              and_return(net_http_request)
            handle
          end

          it 'should enable ssl on the http session' do
            net_http_request.should_receive(:use_ssl=).with(true)
            handle
          end

          it 'should verify the cert' do
            net_http_request.should_receive(:verify_mode=).
              with(OpenSSL::SSL::VERIFY_PEER)
            handle
          end

        end

        context 'without ssl' do

          it 'should set the port to 90 when use_ssl? is false' do
            request.stub(:use_ssl?).and_return(false)
            Net::HTTP.should_receive(:new).with(anything(), 80).
              and_return(net_http_request)
            handle
          end

        end

      end

    end
  end
end
