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
require 'aws/response'

module AWS
  describe Response do

    let(:http_request) { double('http-request') }

    let(:http_response) { double('http-request') }

    let(:response) { Response.new(http_request, http_response) }

    context '#initialize' do

      it 'should not require any arguments' do
        lambda { Response.new }.
          should_not raise_error
      end

    end

    context '#rebuild_request' do

      it 'should call the block passed to initialize' do
        obj = double("obj")
        obj.should_receive(:call)
        Response.new(http_request, http_response) { obj.call }.
          rebuild_request
      end

      it 'should set http_request to the return value of the block' do
        r = Response.new(http_request, http_response) { "foo" }
        r.rebuild_request
        r.http_request.should == "foo"
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

    context '#throttled?' do

      it 'returns true if the request was throttled' do
      end

      it 'returns false for successful requests' do
        response.stub(:successful?).and_return(true)
        response.throttled?.should == false
      end

      it 'returns true for failed requests with a Throttling code' do
        http_response.stub(:body).and_return(<<-XML.strip)
          <xml>
            <Code>Throttling</Code>
          </xml>
        XML
        response.stub(:successful?).and_return(false)
        response.throttled?.should == true
      end

    end

    context '#timeout?' do

      it 'returns fals if the http request did not time out' do
        http_response.stub(:timeout?).and_return(false)
        response.timeout?.should == false
      end

      it 'returns true if the http request timed out' do
        http_response.stub(:timeout?).and_return(true)
        response.timeout?.should == true
      end

    end

    context '#inspect' do

      it 'has a simple inspect string' do
        response.inspect.should == '<AWS::Response>'
      end

      it 'includes the request type if present' do
        response.request_type = "foo_bar"
        response.inspect.should == '<AWS::Response:foo_bar>'
      end

    end

    context '#cache_key' do

      let(:request) { double("request",
                             :host => "ENDPOINT",
                             :access_key_id => "KEY") }

      before(:each) do
        response.stub(:http_request).and_return(request)
        response.stub(:serialized_options).and_return("OPTIONS")
        response.stub(:request_type).and_return(:some_request)
      end

      it 'should consist of the access key, endpoint, and options' do
        response.cache_key.should == "KEY:ENDPOINT:some_request:OPTIONS"
      end

    end

    context '#serialized_options' do

      context 'hash' do

        it 'should alphabetize the keys' do
          response.request_options = {
            :zed => "1",
            :acrobat => "2"
          }
          response.serialized_options.
            should == '(acrobat="2" zed="1")'
        end

        it 'should use :inspect to serialize the values' do
          response.request_options = {
            :foo => double("bar", :inspect => "ZZZ")
          }
          response.serialized_options.
            should == '(foo=ZZZ)'
        end

        it 'should serialize nested hashes the same way' do
          response.request_options = {
            :foo => { :foo => "bar" }
          }
          response.serialized_options.
            should == '(foo=(foo="bar"))'
        end

      end

      context 'array' do

        it 'should inspect each element' do
          response.request_options = {
            :foo => ["a", :b]
          }
          response.serialized_options.
            should == '(foo=["a" :b])'
        end

        it 'should recurse into nested hashes' do
          response.request_options = {
            :foo => [{ :foo => "bar" }]
          }
          response.serialized_options.
            should == '(foo=[(foo="bar")])'
        end

        it 'should represent empty arrays as "[]"' do
          response.request_options = {
            :foo => []
          }
          response.serialized_options.
            should == '(foo=[])'
        end

      end

    end

  end
end
