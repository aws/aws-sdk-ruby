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

module AWS
  class EC2

    describe Tag do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:resource) { ResourceObject.new("resource-id",
                                          :resource_type => "resource-object",
                                          :config => config) }

      let(:tag) { Tag.new(resource, 'key') }

      it_should_behave_like "an ec2 model object", 'resource', 'key', {}

      context '#resource' do

        it 'returns the resource' do
          tag.resource.should == resource
        end

      end

      context '#key' do

        it 'returns the key it was constructed with' do
          tag.key.should == 'key'
        end

        it 'stringifies the key' do
          Tag.new(resource, :key).key.should == 'key'
        end

      end

      context '#name' do

        it 'is an alias of key' do
          tag.method(:name).should == tag.method(:key)
        end

      end

      context '#value' do

        context 'populated from describe_tags' do

          let(:resp) { client.stub_for(:describe_tags) }

          let(:attributes) { tag.attributes_from_response(resp) }

          context 'when the tag is not returned in the response' do

            it 'should return nil' do
              attributes.should be_nil
            end

          end

          context 'when the tag is included in the response' do

            it 'should return the value from the response object' do
              resp.tag_index["resource-object:resource-id:key"] =
                { :value => 'value' }
              attributes[:value].should == "value"
            end

          end

        end

        context 'requested from describe_tags' do

          let(:resp) { double("response",
                              :request_type => :describe_tags,
                              :tag_index => {}) }

          it 'should use retrieve_attribute' do
            tag.should_receive(:retrieve_attribute).and_return("FOO")
            tag.value.should == "FOO"
          end

          context 'client request' do

            let(:options) do
              opts = nil
              client.should_receive(:describe_tags) do |in_opts|
                opts = in_opts
                resp
              end
              tag.value
              opts
            end

            before(:each) do
              resp.tag_index["resource-object:resource-id:key"] =
                { :value => 'value' }
            end

            it 'should call describe_tags' do
              options.should_not be_nil
            end

            it 'should filter by key' do
              options[:filters].map { |f| f[:name] }.
                should include("key")
              options[:filters].
                find { |f| f[:name] == "key" }[:values].
                should == ["key"]
            end

            it 'should filter by resource type' do
              options[:filters].map { |f| f[:name] }.
                should include("resource-type")
              options[:filters].
                find { |f| f[:name] == "resource-type" }[:values].
                should == ["resource-object"]
            end

            it 'should filter by resource id' do
              options[:filters].map { |f| f[:name] }.
                should include("resource-id")
              options[:filters].
                find { |f| f[:name] == "resource-id" }[:values].
                should == ["resource-id"]
            end

          end

        end

      end

      context '#delete' do

        it 'calls delete_tags on the client' do
          client.should_receive(:delete_tags).with({
            :resources => [tag.resource.id],
            :tags => [{ :key => tag.key }],
          })
          tag.delete
        end

        it 'accepts an optional value argument' do
          client.should_receive(:delete_tags).with({
            :resources => [tag.resource.id],
            :tags => [{ :key => tag.key, :value => "FOO" }],
          })
          tag.delete("FOO")
        end

      end

      context '#inspect' do

        it 'should include the resource type, resource ID, and key' do
          tag.inspect.should == "<AWS::EC2::Tag:resource-object:resource-id:key>"
        end

      end

      context '#local_cache_key' do

        it 'should include the class name, resource type, resource ID, and key' do
          tag.local_cache_key.
            should == "resource-object:resource-id:key"
        end

      end

    end
  end
end
