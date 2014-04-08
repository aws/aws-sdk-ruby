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

  describe Cacheable do

    let(:attr) { double("attribute", :request_types => [], :name => :att) }

    let(:resource_class) do
      Class.new do
        include Cacheable
      end
    end
    let(:resource) { resource_class.new }

    context '#cache_key' do

      class AWS::SomeService
        class MyResource
          include Cacheable
        end
      end

      let(:resource) { AWS::SomeService::MyResource.new }

      let(:credential_provider) {
        double("creds", :access_key_id => "ACCESS_KEY")
      }

      let(:config) {
        double("config", {
          :credential_provider => credential_provider,
          :region => "ENDPOINT",
        })
      }

      before(:each) do
        resource.stub(:config).and_return(config)
      end

      it 'should include the access key, endpoint, service, and local key' do
        resource.stub(:local_cache_key).and_return("LOCAL")
        resource.send(:cache_key).should == "ACCESS_KEY:ENDPOINT:#{resource.class.name}:LOCAL"
      end

    end

    context '#retrieve_attribute' do

      context 'no response cache' do

        before(:each) do
          AWS.stub(:response_cache).and_return(nil)
          resource.stub(:attributes_from_response).and_return({})
        end

        it 'should call the block' do
          obj = double("obj")
          obj.should_receive(:call).and_return("response")
          resource.retrieve_attribute(attr) { obj.call }
        end

        it 'should return the attribute value from the response returned by the block' do
          block_response = double("block response")
          resource.stub(:attributes_from_response).
            with(block_response).
            and_return({ :att => "value" })
          resource.retrieve_attribute(attr) { block_response }.
            should == "value"
        end

      end

      context 'response cache active' do

        let(:response) { double("response",
                                :request_type => "foo") }

        let(:response_cache) { double("response cache",
                                      :resource_cache => resource_cache) }

        let(:resource_cache) { double("resource cache",
                                      :cached? => false,
                                      :store => nil) }

        before(:each) do
          AWS.stub(:response_cache).and_return(response_cache)
          response_cache.stub(:select).and_return([response])
          resource.stub(:attributes_from_response).and_return({})
          resource.stub(:cache_key).and_return("cache key")
        end

        context 'includes a response with the attribute' do

          before(:each) do
            resource.stub(:attributes_from_response).
              and_return(:att => "value")
          end

          it 'should return the attribute value populated from the response' do
            resource.retrieve_attribute(attr).should == "value"
          end

          it 'should not call the block' do
            resource.retrieve_attribute(attr) { fail "called the block" }
          end

          it 'should not call the block even if the attribute value is nil' do
            resource.stub(:attributes_from_response).
              and_return({:att => nil})
            resource.retrieve_attribute(attr) { fail "called the block" }
          end

          it 'should call the block if the attribute is not included in the hash' do
            resource.stub(:attributes_from_response).
              and_return(:att2 => nil)
            obj = double("obj")
            obj.should_receive(:call)
            resource.retrieve_attribute(attr) { obj.call }
          end

          it 'should store the attributes in the resource cache' do
            resource_cache.should_receive(:store).
              with("cache key", :att => "value")
            resource.retrieve_attribute(attr) { }
          end

        end

        context 'no matching responses' do

          before(:each) do
            resource.stub(:attributes_from_response).and_return(nil)
          end

          it 'should call the block' do
            obj = double("obj")
            obj.should_receive(:call).and_return(response)
            resource.retrieve_attribute(attr) { obj.call } rescue nil
          end

          it 'should raise an exception if the response includes no information about the resource' do
            resource.stub(:attributes_from_response).and_return(nil)
            lambda { resource.retrieve_attribute(attr) { response } }.
              should raise_error(Cacheable::NoData)
          end

        end

      end

    end

  end

end
