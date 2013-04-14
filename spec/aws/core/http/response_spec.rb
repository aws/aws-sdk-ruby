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
  module Http
    describe Response do

      context 'default values' do

        it 'should default status to 200' do
          Response.new.status.should == 200
        end

        it 'should default headers to a empty hash' do
          Response.new.headers.should == {}
        end

        it 'should default body to nil' do
          Response.new.body.should == nil
        end

      end

      context '#initialize' do

        it 'should return a response' do
          Response.new.should be_a(Response)
        end

        it 'should yield a response' do
          yielded_response = nil
          returned_response = Response.new do |r|
            yielded_response = r
          end
          yielded_response.should be_a(Response)
        end

        it 'should return the same response it yields' do
          yielded_response = nil
          returned_response = Response.new do |r|
            yielded_response = r
          end
          yielded_response.should == returned_response
        end

        it 'should accept status' do
          Response.new(:status => 200).status.should == 200
        end

        it 'should accept body' do
          Response.new(:body => 'body').body.should == 'body'
        end

        it 'should accept headers' do
          headers = { 'key' => 'value' }
          Response.new(:headers => headers).headers.should == headers
        end

      end

      context '#header' do

        it 'returns nil when the response does not have the header' do
          Response.new(:headers => {}).header('foo').should == nil
        end

        it 'returns the matching response header' do
          r = Response.new(:headers => { 'foo' => 'bar'})
          r.header('foo').should == 'bar'
        end

        it 'symbolizes header name' do
          r = Response.new(:headers => { 'foo' => 'bar'})
          r.header(:foo).should == 'bar'
        end

        it 'lowercases keys to match' do
          r = Response.new(:headers => { 'foo' => 'bar'})
          r.header('Foo').should == 'bar'
        end

        it 'lowercases header keys to match' do
          r = Response.new(:headers => { 'Foo' => 'bar'})
          r.header('foo').should == 'bar'
        end

        it 'lowercases both keys to match' do
          r = Response.new(:headers => { 'Foo' => 'bar'})
          r.header('Foo').should == 'bar'
        end

        it 'returns the first value of header value array' do
          r = Response.new(:headers => { 'foo' => ['bar']})
          r.header('foo').should == 'bar'
        end

        it 'returns nil unmodified' do
          r = Response.new(:headers => { 'foo' => nil })
          r.header('foo').should == nil
        end

      end

    end
  end
end
