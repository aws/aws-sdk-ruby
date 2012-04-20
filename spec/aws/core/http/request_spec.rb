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

      context '#path' do

        it 'defaults to /' do
          Request.new.path.should == '/'
        end

        it 'can be set directly' do
          req = Request.new
          req.path = '/foo'
          req.path.should == '/foo'
        end

      end

      context '#headers' do

        it 'defaults headers to an empty hash' do
          Request.new.headers.should == {}
        end

      end

      context '#uri' do

        it 'is /' do
          Request.new.uri.should == '/'
        end

        it 'can not be changed' do
          lambda {
            Request.new.uri = 'foo'
          }.should raise_error(NoMethodError)
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
       
        it 'contains the url_encoded_params' do
          r = Request.new
          r.add_param('foo', 'bar')
          r.body.should == r.url_encoded_params 
          r.body.should == 'foo=bar'
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

      context '#get_param' do
        
        it 'should raise an error for non-existant params' do
          req = Request.new
          lambda {
            req.get_param('foo')
          }.should raise_error(/undefined param/)
        end

      end

    end
  end
end
