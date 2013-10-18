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

    class SomeWeirdResource < Resource
      attr_reader :id
      def initialize(id, opts={})
        @id = id
        super(opts)
      end
    end

    describe TagCollection do

      it_should_behave_like "an ec2 model object", {}

      it_should_behave_like "ec2 collection object" do

        let(:member_class) { Tag }

        let(:client_method) { :describe_tags }

        def stub_two_members response
          response.stub(:tag_set).
            and_return(mock_resources[0..1])
        end

        def mock_resources
          [
            double("tag1",
              :resource_type => "security-group",
              :resource_id => "sg-0e64f367",
              :key => "webserver",
              :value => nil),
            double("tag2",
              :resource_type => "instance",
              :resource_id => "i-7f636513",
              :key => "stage",
              :value => "production"),
            double("tag3",
              :resource_type => "image",
              :resource_id => "image-id",
              :key => "foo",
              :value => "bar"),
            double("tag4",
              :resource_type => "some-weird-resource",
              :resource_id => "resource-id",
              :key => "baz",
              :value => "bla"),
            double("tag4",
              :resource_type => "some-fantasy-resource",
              :resource_id => "resource-id",
              :key => "boo",
              :value => "boo")
          ]
        end

        context '#create' do

          let(:response) { client.stub_for(:create_tags) }

          before(:each) do
            client.stub(:create_tags).and_return(response)
          end

          it 'calls create_tags on the client' do
            client.should_receive(:create_tags).with({
              :resources => ['abc'],
              :tags => [{ :key => 'foo', :value => 'bar' }],
            })
            resource = double('resource', :id => 'abc')
            collection.create(resource, 'foo', :value => 'bar')
          end

          it 'returns a Tag object' do
            resource = double('resource', :id => 'abc')
            tag = collection.create(resource, 'key', :value => 'value')
            tag.should be_a(Tag)
            tag.key.should == 'key'
            tag.config.should == collection.config
          end

        end

        context '#each' do

          let(:response) { client.stub_for(:describe_tags) }

          before(:each) do
            response.stub(:tag_set).and_return(mock_resources)
            client.stub(:describe_tags).and_return(response)
          end

          it 'populate tag keys' do
            collection.collect{|t| t.key }.should ==
              mock_resources.collect(&:key)
          end

          it 'returns security-group resources properly' do
            resource = collection.to_a[0].resource
            resource.should be_a(SecurityGroup)
            resource.id.should == 'sg-0e64f367'
            resource.config.should == collection.config
          end

          it 'returns instance resources properly' do
            resource = collection.to_a[1].resource
            resource.should be_a(Instance)
            resource.id.should == 'i-7f636513'
            resource.config.should == collection.config
          end

          it 'returns image resources properly' do
            resource = collection.to_a[2].resource
            resource.should be_a(Image)
            resource.id.should == 'image-id'
            resource.config.should == collection.config
          end

          it 'returns other modeled resource types properly' do
            resource = collection.to_a[3].resource
            resource.should be_a(SomeWeirdResource)
            resource.id.should == 'resource-id'
            resource.config.should == collection.config
          end

          it 'returns other un-modeled resource types properly' do
            resource = collection.to_a[4].resource
            resource.should be_a(ResourceObject)
            resource.id.should == 'resource-id'
            resource.tagging_resource_type.should == "some-fantasy-resource"
            resource.config.should == collection.config
          end

        end

      end
    end
  end
end
