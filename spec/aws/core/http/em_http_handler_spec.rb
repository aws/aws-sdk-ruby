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

module AWS::Core
  module Http
    describe EMHttpHandler do

      let(:handler) { EMHttpHandler.new(default_request_options) }

      let(:default_request_options) { {} }

      let(:req) do
        r = Http::Request.new
        r.host = "foo.bar.com"
        r
      end

      let(:resp) { Http::Response.new }

      let(:em_http_options) do
        options = nil
        EMHttpHandler.should_receive(:fetch_response).with do |url, method,opts|
          puts "here"
          options = opts
          double("http response",
            :response => "<foo/>",
            :code => 200,
            :to_hash => {})
        end
        handler.handle(req, resp)
        options
      end
        
      it 'should be accessible from AWS as well as AWS::Core' do
        AWS::Http::EMHttpHandler.new.should 
        be_an(AWS::Core::Http::EMHttpHandler)
      end

      describe '#initialize' do

        it 'should set the default request options' do
          described_class.new(:foo => "BAR").default_request_options.
            should == { :foo => "BAR" }
        end

      end

      describe '#handle' do

        context 'timeouts' do

          it 'should rescue Timeout::Error' do
            handler.stub(:fetch_response).
              and_raise(Timeout::Error)
            lambda { handler.handle(req, resp) }.
              should_not raise_error
          end

          it 'should rescue Errno::ETIMEDOUT' do
            handler.stub(:fetch_response).
              and_raise(Errno::ETIMEDOUT)
            lambda { handler.handle(req, resp) }.
              should_not raise_error
          end

          it 'should indicate that there was a timeout' do
            handler.stub(:fetch_response).
              and_raise(Errno::ETIMEDOUT)
            handler.handle(req, resp)
            resp.timeout?.should be_true
          end

        end

        context 'default request options' do
          before(:each) do
            handler.stub(:default_request_options).and_return({ :foo => "BAR",
                :private_key_file => "blarg" })
          end

          it 'passes extra options through to synchrony' do
            handler.default_request_options[:foo].should == "BAR"
          end

          it 'uses the default when the request option is not set' do
            #puts handler.default_request_options
            handler.default_request_options[:private_key_file].should == "blarg"
          end
          
        end
        
        
        describe '#fetch_proxy' do
          context ':proxy_uri' do

            it 'passes proxy address and port from the request' do
              req.proxy_uri = URI.parse('https://user:pass@proxy.com:443/path?query')
              handler.fetch_proxy(req)[:proxy][:host].should == 'proxy.com'
              handler.fetch_proxy(req)[:proxy][:port].should == 443
            end

          end
        
          describe '#fetch_ssl' do
            it 'prefers the request option when set' do
              req.use_ssl = true
              req.ssl_verify_peer = true
              req.ssl_ca_file = "something"
              handler.fetch_ssl(req)[:private_key_file].should == "something"
              handler.fetch_ssl(req)[:cert_chain_file].should == "something"
            end
           
            context 'CA cert path' do

              context 'use_ssl? is true' do

                before(:each) { req.use_ssl = true }

                context 'ssl_verify_peer? is true' do

                  before(:each) do
                    req.ssl_verify_peer = true
                    req.ssl_ca_file = "foobar.txt"
                  end

                  it 'should use the ssl_ca_file attribute of the request' do
                    handler.fetch_ssl(req)[:private_key_file].should == "foobar.txt"
                  end
                  
                  it 'should use the ssl_ca_file attribute of the request' do
                    handler.fetch_ssl(req)[:cert_chain_file].should == "foobar.txt"
                  end
                end

                it 'should not set the ssl_ca_file option without ssl_verify_peer?' do
                  handler.fetch_ssl(req).should_not include(:private_key_file)
                end
              end

              it 'should not set the ssl_ca_file option without use_ssl?' do
                handler.fetch_ssl(req).should_not include(:private_key_file)
              end
            end
          end      
        end
      end
    end
  end
end
