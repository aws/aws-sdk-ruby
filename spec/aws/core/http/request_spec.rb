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
    describe Request do

      context '#initialize' do

        it 'accepts no params' do
          lambda {
            Request.new({})
          }.should raise_error(ArgumentError, /wrong number of arguments/)
        end

      end

      context '#use_ssl?' do

        it 'defaults to true' do
          Request.new.use_ssl?.should == true
        end

        it 'can be set to false' do
          req = Request.new
          req.use_ssl = false
          req.use_ssl?.should == false
        end

      end

      context '#method' do

        it 'defaults to POST' do
          Request.new.http_method.should == 'POST'
        end

        it 'can be set' do
          r = Request.new
          r.http_method = 'GET'
          r.http_method.should == 'GET'
        end

      end

      context '#host' do

        it 'defaults host to nil' do
          Request.new.host.should be_nil
        end

        it 'can be set directly' do
          request = Request.new
          request.host = 'xyz.com'
          request.host.should == 'xyz.com'
        end

      end

      context '#headers' do

        it 'defaults headers to an empty hash' do
          Request.new.headers.should == {}
        end

      end

      context '#port' do

        it 'defaults to 443' do
          Request.new.port.should == 443
        end

        it 'defaults to 80 when ssl is disabled' do
          r = Request.new
          r.use_ssl = false
          r.port.should == 80
        end

        it 'can be manually set' do
          r = Request.new
          r.port = 8080
          r.port.should == 8080
        end

        it 'manual port value overrides non-http value' do
          r = Request.new
          r.use_ssl = false
          r.port.should == 80
          r.port = 4000
          r.port.should == 4000
        end

      end

      context '#uri' do

        it 'defaults to /' do
          Request.new.uri.should == '/'
        end

        it 'can be changed' do
          req = Request.new
          req.uri = '/abc?mno=xyz'
          req.uri.should == '/abc?mno=xyz'
        end

      end

      context '#path' do

        it 'defaults to /' do
          Request.new.path.should == '/'
        end

        it 'is a read-only attribute' do
          r = Request.new
          lambda {
            r.path = '/abc'
          }.should raise_error(NoMethodError)
        end

        it 'is mutable via #url=' do
          r = Request.new
          r.uri = '/abc?mno=xyz'
          r.path.should == '/abc'
        end

      end

      context '#querystring' do

        it 'defaults to nil' do
          Request.new.querystring.should == nil
        end

        it 'is a read-only attribute' do
          r = Request.new
          lambda {
            r.querystring = 'foo=bar'
          }.should raise_error(NoMethodError)
        end

        it 'is mutable via #url=' do
          r = Request.new
          r.uri = '/abc?mno=xyz&123=456'
          r.querystring.should == 'mno=xyz&123=456'
        end

      end

      context '#url_encoded_params' do

        it 'defaults to nil' do
          Request.new.url_encoded_params.should be_nil
        end

        it 'joins param names and values with =' do
          r = Request.new
          r.add_param('foo', 'bar')
          r.url_encoded_params.should == 'foo=bar'
        end

        it 'joins multiple params with an &' do
          r = Request.new
          r.add_param('abc', '123')
          r.add_param('xyz', '456')
          r.url_encoded_params.should == 'abc=123&xyz=456'
        end

        it 'sorts params' do
          r = Request.new
          r.add_param('xyz', '456')
          r.add_param('abc', '123')
          r.url_encoded_params.should == 'abc=123&xyz=456'
        end

        it 'accepts params that have no values' do
          req = Request.new
          req.add_param('acl')
          req.url_encoded_params.should == 'acl'
        end

        it 'url encodes param names and valeus' do
          r = Request.new
          r.add_param('param name', 'val=u!')
          r.url_encoded_params.should == 'param%20name=val%3Du%21'
        end

      end

      context '#body' do

        it 'defaults to nil' do
          Request.new.body.should be_nil
        end

        it 'is mutable' do
          r = Request.new
          r.body = 'abc'
          r.body.should eq('abc')
        end

        it 'returns the body stream read into a single string' do

          # the io will get read once and then cached, multiple calls
          # should not re-read the stream
          io = double('io')
          io.should_receive(:read).exactly(1).times.and_return('abc')
          io.should_receive(:rewind)

          r = Request.new
          r.body.should eq(nil)
          r.body_stream = io
          r.body.should eq('abc')
          r.body.should eq('abc') # it rewinds the stream when needed

        end

        it 'populates content-length when you set the body' do
          r = Request.new
          r.body = 'abc'
          r.headers['content-length'].should eq(3)
        end

        it 'sets the content length to the body bytesize' do

          string = double('body-string')
          string.should_receive(:bytesize).and_return(4)

          r = Request.new
          r.body = string
          r.headers['content-length'].should eq(4)

        end

      end

      context '#body_stream' do

        it 'defaults to nil' do
          Request.new.body_stream.should eq(nil)
        end

        it 'can be set' do
          io = StringIO.new('abc')
          r = Request.new
          r.body_stream = io
          r.body_stream.should eq(io)
        end

        it 'returns the body wrapped in a string io' do
          r = Request.new
          r.body = 'body'
          r.body_stream.should be_a(StringIO)
          r.body_stream.read.should eq('body')
        end

      end

      context '#params' do

        it 'should return an array' do
          Request.new.params.should be_an(Array)
        end

        it 'should return params in the ordered they were added' do
          names = %w(foo bar yuck)
          req = Request.new
          names.each do |name|
            req.add_param(name)
          end
          req.params.collect{|p| p.name }.should == names
        end

      end

      context '#add_param' do

        it 'should add a param' do
          req = Request.new
          req.add_param('foo')
          req.params.last.name.should == 'foo'
        end

        it 'should add a param with the correct value' do
          req = Request.new
          req.add_param('foo', 'bar')
          req.params.last.value.should == 'bar'
        end

        it 'should increase the number of params' do
          req = Request.new
          req.add_param('foo')
          req.add_param('bar')
          req.params.length.should == 2
        end

      end

    end
  end
end
