# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

module AWS::Core::Http
  describe NetHttpHandler do

    let(:handler) { described_class.new }

    let(:request) {
      double('aws-request',
        :http_method => 'POST',
        :host => 'host.com',
        :uri => '/path?querystring',
        :body => 'body',
        :proxy_uri => nil,
        :use_ssl? => true,
        :ssl_verify_peer? => true,
        :ssl_ca_file => '/ssl/ca',
        :ssl_ca_path => nil,
        :read_timeout => 60,
        :headers => { 'foo' => 'bar' })
    }

    let(:response) { Response.new }

    let(:handle!) { handler.handle(request, response) }

    let(:http) { double('http-session').as_null_object }

    let(:http_response) {
      double('http-response',
        :body => 'resp-body', 
        :code => '200', 
        :to_hash => { 'header-name' => ['header-value'] })
    }

    before(:each) do
      http.stub(:request).and_return(http_response)
      http.stub(:started?).and_return(true)
      Net::HTTP.stub(:new).and_return(http)
      AWS::Core::Http::NetHttpHandler.pool.empty!
    end

    context 'http session' do
      
      it 'connects to the request host' do
        request.stub(:host).and_return('hostname.com')
        Net::HTTP.should_receive(:new).
          with('hostname.com', anything).
          and_return(http)
        handle!
      end

      it 'uses port 80 for non-ssl requests' do
        request.stub(:use_ssl?).and_return(false)
        Net::HTTP.should_receive(:new).
          with(anything, 80).
          and_return(http)
        handle!
      end

      it 'uses port 443 for ssl requests' do
        request.stub(:use_ssl?).and_return(true)
        Net::HTTP.should_receive(:new).
          with(request.host, 443).
          and_return(http)
        handle!
      end

      it 'starts and stops the http session around the request' do
        http.should_receive(:start).once.ordered
        http.should_receive(:request).once.ordered.and_return(http_response)
        #http.should_receive(:finish).once.ordered
        handle!
      end

    end

    context 'proxies' do
      
      it 'passes proxy information to the session' do

        p = URI.parse('https://user:pass@proxy.com:443/path?query')
        request.stub(:proxy_uri).and_return(p)

        Net::HTTP.should_receive(:new).
          with(anything, anything, p.host, p.port, p.user, p.password).
          and_return(http)

        handle!

      end

    end

    context 'ssl verification' do
      
      it 'enables ssl on the http session when the request is ssl' do

        request.stub(:use_ssl?).and_return(true)

        http.should_receive(:use_ssl=).with(true)
        http.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_PEER)
        http.should_receive(:ca_file=).with(request.ssl_ca_file)

        handle!

      end

      it 'enables ssl but not verification when verify peer is false' do

        request.stub(:use_ssl?).and_return(true)
        request.stub(:ssl_verify_peer?).and_return(false)

        http.should_receive(:use_ssl=).with(true)
        http.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_NONE)

        handle!

      end

      it 'disnables ssl on the http session when the request is not ssl' do

        request.stub(:use_ssl?).and_return(false)

        http.should_receive(:use_ssl=).with(false)

        handle!

      end

    end

    context 'request' do

      it 'builds the request with the request uri, headers and body' do
        
        request.stub(:http_method).and_return('GET')

        http_request = double('http-request')

        Net::HTTP::Get.should_receive(:new).
          with(request.uri, request.headers.merge('content-type' => '')).
          and_return(http_request)

        http_request.should_receive(:body=).with(request.body)

        handle!
        
      end
      
      it 'makes a get request when http method is GET' do

        request.stub(:http_method).and_return('GET')

        http.should_receive(:request).with do |req|
          req.should be_a(Net::HTTP::Get)
        end.and_return(http_response)

        handle!
        
      end
      
      it 'makes a get request when http method is PUT' do

        request.stub(:http_method).and_return('PUT')

        http.should_receive(:request).with do |req|
          req.should be_a(Net::HTTP::Put)
        end.and_return(http_response)

        handle!
        
      end
      
      it 'makes a get request when http method is POST' do

        request.stub(:http_method).and_return('POST')

        http.should_receive(:request).with do |req|
          req.should be_a(Net::HTTP::Post)
        end.and_return(http_response)

        handle!
        
      end
      
      it 'makes a get request when http method is HEAD' do

        request.stub(:http_method).and_return('HEAD')

        http.should_receive(:request).with do |req|
          req.should be_a(Net::HTTP::Head)
        end.and_return(http_response)

        handle!
        
      end
      
      it 'makes a get request when http method is DELETE' do

        request.stub(:http_method).and_return('DELETE')

        http.should_receive(:request).with do |req|
          req.should be_a(Net::HTTP::Delete)
        end.and_return(http_response)

        handle!
        
      end

      it 'raises an error for unhandled http request methods' do

        request.stub(:http_method).and_return('FOO')

        lambda { handle!  }.should raise_error(/FOO/)

      end

    end

    context 'response' do

      it 'populates the response body from the http response' do
        handle!
        response.body.should == http_response.body
      end

      it 'populates the response status from the http response code' do
        handle!
        response.status.should == http_response.code.to_i
      end

      it 'populates the response headers from the http response headers' do
        handle!
        response.headers.should == http_response.to_hash
      end

    end

    context 'timeouts' do

      it 'traps timeout errors and populates them on the response' do
        http.stub(:request).and_raise(Timeout::Error)
        handle!
        response.timeout.should == true
      end

    end

  end
end
