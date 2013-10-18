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

require 'spec_helper'
require 'stringio'
require 'timeout'

module AWS::Core::Http
  describe NetHttpHandler do

    let(:handler_opts) {{:verify_response_body_content_length => true}}

    let(:handler) { described_class.new(handler_opts) }

    let(:request) {
      double('aws-request',
        :http_method => 'POST',
        :endpoint => 'https://host.com',
        :uri => '/path?querystring',
        :body_stream => StringIO.new('body'),
        :use_ssl? => true,
        :ssl_verify_peer? => true,
        :ssl_ca_file => '/ssl/ca',
        :ssl_ca_path => nil,
        :read_timeout => 60,
        :continue_timeout => 1,
        :headers => { 'foo' => 'bar' })
    }

    let(:response) { Response.new }

    let(:read_block) { }

    let(:handle!) { handler.handle(request, response, &read_block) }

    let(:http) { double('http-session').as_null_object }

    let(:http_response) {
      double = double('http-response',
        :code => '200',
        :body => 'resp-body',
        :to_hash => { 'header-name' => ['header-value'] })
      double.stub(:read_body) do |&block|
        block ? block.call('resp-body') : 'resp-body'
      end
      double
    }

    before(:each) do
      http.stub(:request).and_yield(http_response)
      http.stub(:started?).and_return(true)
      Net::HTTP.stub(:new).and_return(http)
    end

    context 'http session' do

      it 'connects to the request host' do
        Net::HTTP.should_receive(:new).
          with('host.com', anything).
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
        handler_opts[:proxy_uri] = p

        Net::HTTP.should_receive(:new).
          with(anything, anything, p.host, p.port, p.user, p.password).
          and_return(http)

        handle!

      end

    end

    context 'ssl verification' do

      it 'enables ssl on the http session when the request is ssl' do

        handler_opts[:use_ssl] = true
        handler_opts[:ssl_ca_file] = 'ca-file'
        handler_opts[:ssl_verify_peer] = true

        http.should_receive(:use_ssl=).with(true)
        http.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_PEER)
        http.should_receive(:ca_file=).with('ca-file')

        handle!

      end

      it 'enables ssl but not verification when verify peer is false' do

        handler_opts[:use_ssl] = true
        handler_opts[:ssl_verify_peer] = false

        http.should_receive(:use_ssl=).with(true)
        http.should_receive(:verify_mode=).with(OpenSSL::SSL::VERIFY_NONE)

        handle!

      end

      it 'disnables ssl on the http session when the request is not ssl' do
        request.stub(:endpoint).and_return('http://host.com')
        http.should_receive(:use_ssl=).with(false)
        handle!
      end

    end

    context 'request' do

      it 'builds the request with the request uri, headers and body' do

        request.stub(:http_method).and_return('GET')

        http_request = double('http-request')

        Net::HTTP::Get.should_receive(:new).
          with(request.uri, request.headers.merge('content-type' => '', 'accept-encoding' => '')).
          and_return(http_request)

        http_request.should_receive(:body_stream=).with(request.body_stream)

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

    context 'streaming response' do
      let(:stream_result) { "" }
      let(:read_block) { proc { |chunk| stream_result << chunk } }

      it 'receives the whole body' do
        handle!
        stream_result.should == http_response.body
      end

      it 'receives the whole body for chunked reads' do
        http_response.stub(:read_body) do |&block|
          http_response.body.split(//).each(&block)
        end
        handle!
        stream_result.should == http_response.body
      end

      it 'does not populate the response body' do
        handle!
        response.body.should be_nil
      end

      it 'populates the response status from the http response code' do
        handle!
        response.status.should == http_response.code.to_i
      end

      it 'populates the response headers from the http response headers' do
        handle!
        response.headers.should == http_response.to_hash
      end

      it 'should not capture errors from within the block' do
        stream_result.stub(:<<).and_raise(IOError)
        expect { handle! }.to raise_error(IOError)
      end

      it 'should not capture errors after first chunk has been processed' do
        http_response.stub(:read_body) do |&block|
          block.call http_response.body[0,1]
          raise IOError, 'simulated'
        end
        expect { handle! }.to raise_error(IOError)
      end
      
    end

    context 'content-length checking' do

      let(:http_response) {
        double = double('http-response',
          :code => '200',
          :body => 'resp-body',
          :to_hash => { 'content-length' => ["10000"] })
        double.stub(:read_body) do |&block|
          block ? block.call('resp-body') : 'resp-body'
        end
        double
      }
      
      it 'should raise if content-length does not match' do
        handle!
        response.network_error.should be_a_kind_of(NetHttpHandler::TruncatedBodyError)
      end

      context 'can turn off length checking' do
        let(:handler_opts) {{:verify_response_body_content_length => false}}

        let(:handler) { described_class.new(handler_opts) }

        it 'should not raise if length does not match but check is off' do
          response.network_error.should be(nil)
        end
        
      end

      context 'with streaming' do
        let(:stream_result) { "" }
        let(:read_block) { proc { |chunk| stream_result << chunk } }
        
        it 'should raise if streamed content-length does not match' do
          expect { handle! }.to raise_error
        end

        context 'can turn off length checking' do
          let(:handler_opts) {{:verify_response_body_content_length => false}}
  
          let(:handler) { described_class.new(handler_opts) }
  
          it 'should not raise if length does not match but check is off' do
            expect { handle! }.to_not raise_error
          end
        
         end
        
      end

      context 'head requests' do

        let(:request) {
          double('aws-request',
            :http_method => 'HEAD',
            :endpoint => 'https://host.com',
            :uri => '/path?querystring',
            :body_stream => StringIO.new('body'),
            :use_ssl? => true,
            :ssl_verify_peer? => true,
            :ssl_ca_file => '/ssl/ca',
            :ssl_ca_path => nil,
            :read_timeout => 60,
            :continue_timeout => 1,
            :headers => { 'foo' => 'bar' })
        }

        let(:http_response) {
          double = double('http-response',
            :code => '200',
            :body => 'resp-body',
            :to_hash => { 'content-length' => ["10000"] })
          double.stub(:read_body) do |&block|
            block ? block.call('') : ''
          end
          double
        }

        it 'should not raise for a head request' do
          handle!
          response.network_error.should be(nil)
        end
        
      end
      
    end

    context 'errors' do

      shared_examples_for(:traps_certain_errors_as_networking_errors) do |klass|

        it "traps #{klass.name} errors" do
          http.stub(:request).and_raise(klass)
          handle!
          response.network_error?.should == true
        end

        it "provides access to the error" do
          http.stub(:request).and_raise(klass)
          handle!
          response.network_error.should be_a(klass)
        end

      end

      it_behaves_like(:traps_certain_errors_as_networking_errors, SocketError)
      it_behaves_like(:traps_certain_errors_as_networking_errors, EOFError)
      it_behaves_like(:traps_certain_errors_as_networking_errors, IOError)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Errno::ECONNABORTED)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Errno::ECONNRESET)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Errno::EPIPE)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Errno::EINVAL)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Timeout::Error)
      it_behaves_like(:traps_certain_errors_as_networking_errors, Errno::ETIMEDOUT)
      it_behaves_like(:traps_certain_errors_as_networking_errors, OpenSSL::SSL::SSLError)

    end
  end
end
