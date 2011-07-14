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
require 'aws/cacheable'

module AWS

  describe Cacheable do

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

      let(:resource) { SomeService::MyResource.new }

      let(:signer) { double("signer",
                            :access_key_id => "ACCESS_KEY") }

      let(:config) { double("config",
                            :signer => signer,
                            :some_service_endpoint => "ENDPOINT") }

      before(:each) do
        resource.stub(:config).and_return(config)
      end

      it 'should include the access key, endpoint, service, and local key' do
        resource.stub(:local_cache_key).and_return("LOCAL")
        resource.cache_key.should == "ACCESS_KEY:ENDPOINT:LOCAL"
      end

    end

    context '#attributes_from_response' do

      let(:response) { double("response",
                              :request_type => :a_request) }

      context 'no populate_from rules' do

        it 'should return nil' do
          resource.attributes_from_response(response).should be_nil
        end

      end

      context 'populate_from for a different request type' do

        it 'should return nil' do
          resource_class.populate_from(:another_request) { |resp| {} }
          resource.attributes_from_response(response).should be_nil
        end

      end

      context 'populate_from for the same response type' do

        it 'should return the return value of the block' do
          resource_class.populate_from(:a_request) { |resp| { :foo => "bar" } }
          resource.attributes_from_response(response).
            should == { :foo => "bar" }
        end

      end

    end

    context '#request_types' do

      context 'no populate_from rules' do

        it 'should return an empty array' do
          resource.request_types.should == []
        end

      end

      context 'multiple populate_from rules' do

        it 'should return the request type of each rule' do
          resource_class.populate_from(:foo) { |r| {} }
          resource_class.populate_from(:bar) { |r| {} }
          resource.request_types.
            should == [:foo, :bar]
        end

        it 'should not return duplicate names' do
          resource_class.populate_from(:foo) { |r| {} }
          resource_class.populate_from(:foo) { |r| {} }
          resource_class.populate_from(:bar) { |r| {} }
          resource.request_types.
            should == [:foo, :bar]
        end

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
          resource.retrieve_attribute(:att) { obj.call }
        end

        it 'should return the attribute value from the response returned by the block' do
          block_response = double("block response")
          resource.stub(:attributes_from_response).
            with(block_response).
            and_return({ :att => "value" })
          resource.retrieve_attribute(:att) { block_response }.
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

        it 'should try each response until it finds the attribute' do
          responses = [double("response one"),
                       double("response two"),
                       double("response three"),
                       double("response four")]
          response_cache.stub(:select).and_return(responses)
          resource.should_receive(:attributes_from_response).
            with(responses[0]).and_return(nil)
          resource.should_receive(:attributes_from_response).
            with(responses[1]).and_return({})
          resource.should_receive(:attributes_from_response).
            with(responses[2]).and_return({ :foo => "bar" })
          resource.should_not_receive(:attributes_from_response).
            with(responses[3])
          resource.retrieve_attribute(:foo) { }
        end

        it 'should pass the request types to cache.select' do
          resource.stub(:request_types).and_return([:one, :two])
          response_cache.should_receive(:select).with(:one, :two).and_return([])
          resource.retrieve_attribute(:foo) { response }
        end

        context 'resource cache includes the attribute' do

          it 'should return the value from the resource cache' do
            resource_cache.stub(:cached?).with("cache key", :att).
              and_return(true)
            resource_cache.should_receive(:get).with("cache key", :att).
              and_return("value")
            response_cache.should_not_receive(:select)
            resource.retrieve_attribute(:att) { }.should == "value"
          end

        end

        context 'includes a response with the attribute' do

          before(:each) do
            resource.stub(:attributes_from_response).
              and_return(:att => "value")
          end

          it 'should return the attribute value populated from the response' do
            resource.retrieve_attribute(:att).should == "value"
          end

          it 'should not call the block' do
            resource.retrieve_attribute(:att) { fail "called the block" }
          end

          it 'should not call the block even if the attribute value is nil' do
            resource.stub(:attributes_from_response).
              and_return(:att => nil)
            resource.retrieve_attribute(:att) { fail "called the block" }
          end

          it 'should call the block if the attribute is not included in the hash' do
            resource.stub(:attributes_from_response).
              and_return(:att2 => nil)
            obj = double("obj")
            obj.should_receive(:call)
            resource.retrieve_attribute(:att) { obj.call }
          end

          it 'should store the attributes in the resource cache' do
            resource_cache.should_receive(:store).
              with("cache key", :att => "value")
            resource.retrieve_attribute(:att) { }
          end

        end

        context 'no matching responses' do

          before(:each) do
            resource.stub(:attributes_from_response).and_return(nil)
          end

          it 'should call the block' do
            obj = double("obj")
            obj.should_receive(:call).and_return(response)
            resource.retrieve_attribute(:att) { obj.call } rescue nil
          end

          it 'should return the attribute value from the response returned by the block' do
            block_response = double("block response")
            resource.stub(:attributes_from_response).
              with(block_response).
              and_return({ :att => "value" })
            resource.retrieve_attribute(:att) { block_response }.
              should == "value"
          end

          it 'should raise an exception if the response includes no information about the resource' do
            resource.stub(:attributes_from_response).and_return(nil)
            lambda { resource.retrieve_attribute(:att) { response } }.
              should raise_error(Cacheable::NoData)
          end

        end

      end

    end

  end

end
