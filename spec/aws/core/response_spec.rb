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

module AWS::Core
  describe Response do

    let(:http_request) { double('http-request', :body_stream => nil) }

    let(:http_response) { double('http-request') }

    let(:response) { Response.new(http_request, http_response) }

    context '#initialize' do

      it 'should not require any arguments' do
        lambda { Response.new }.should_not raise_error
      end

    end

    context '#data' do

      it 'returns the value passed in' do
        hash = { :a => 1 }
        response.data = hash
        response.data.should === hash
      end

    end

    context '#[]' do

      it 'returns the hash data at the given key' do
        hash = { :a => 1 }
        response.data = { :key => hash }
        response[:key].should === hash
      end

    end

    context '#method_missing' do

      it 'returns the hash data at the given key wrapped in a Core::Data obj' do
        hash = { :a => 1 }
        response.data = { :key => hash }
        response.key.should == hash
        response.key.should be_a(AWS::Core::Data)
      end

    end

    context '#rebuild_request' do

      it 'should call the block passed to initialize' do
        called = false
        Response.new(http_request, http_response) { called = true; http_request }.
          rebuild_request
        called.should eq(true)
      end

      it 'should set http_request to the return value of the block' do
        new_req = double('new-request').as_null_object
        r = Response.new(http_request, http_response) { new_req }
        r.rebuild_request
        r.http_request.should == new_req
      end

    end

    context '#http_request' do

      it 'uses rebuild_request if no http_request is set' do
        Response.new { http_request }.
          http_request.should be(http_request)
      end

      it 'returns the http request object' do
        response.http_request.should == http_request
      end

    end

    context '#http_response' do

      it 'returns the http response object' do
        response.http_request.should == http_request
      end

    end

    context '#successful?' do

      it 'returns true if error is not nil' do
        response.error = StandardError.new('foo')
        response.successful?.should == false
      end

      it 'returns true if error is nil' do
        response.error = nil
        response.successful?.should == true
      end

    end

    context '#network_error?' do

      it 'returns fals if the http request did not time out' do
        http_response.stub(:network_error?).and_return(false)
        response.network_error?.should == false
      end

      it 'returns true if the http request timed out' do
        http_response.stub(:network_error?).and_return(true)
        response.network_error?.should == true
      end

    end

    context '#inspect' do

      it 'has a simple inspect string' do
        response.inspect.should == '{}'
      end

      it 'is the inspect string for the response data' do
        data = double('response-data')
        data.should_receive(:inspect).and_return('inspect-string')
        response.data = data
        response.inspect.should == 'inspect-string'
      end

    end

    context '#cache_key' do

      let(:request) {
        double("request", :host => "ENDPOINT", :access_key_id => "KEY")
      }

      before(:each) do
        response.stub(:http_request).and_return(request)
        response.stub(:request_type).and_return(:some_request)
      end

      it 'should consist of the access key, endpoint, and options' do
        response.stub(:serialized_options).and_return("OPTIONS")
        response.cache_key.should == "KEY:ENDPOINT:some_request:OPTIONS"
      end

      context 'serialized options' do

        context 'hash' do

          it 'should alphabetize the keys' do
            response.request_options = {
              :zed => "1",
              :acrobat => "2"
            }
            response.cache_key.should =~ /\(acrobat="2" zed="1"\)/
          end

          it 'should use :inspect to serialize the values' do
            response.request_options = {
              :foo => double("bar", :inspect => "ZZZ")
            }
            response.cache_key.should =~ /\(foo=ZZZ\)/
          end

          it 'should serialize nested hashes the same way' do
            response.request_options = {
              :foo => { :foo => "bar" }
            }
            response.cache_key.should =~ /\(foo=\(foo="bar"\)\)/
          end

        end

        context 'array' do

          it 'should inspect each element' do
            response.request_options = {
              :foo => ["a", :b]
            }
            response.cache_key.should =~ /\(foo=\["a" :b\]\)/
          end

          it 'should recurse into nested hashes' do
            response.request_options = {
              :foo => [{ :foo => "bar" }]
            }
            response.cache_key.should =~ /\(foo=\[\(foo="bar"\)\]\)/
          end

          it 'should represent empty arrays as "[]"' do
            response.request_options = {
              :foo => []
            }
            response.cache_key.should =~ /\(foo=\[\]\)/
          end

        end

      end
    end

  end
end
