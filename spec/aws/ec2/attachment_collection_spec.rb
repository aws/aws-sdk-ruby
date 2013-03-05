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

    describe AttachmentCollection do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:volume) { Volume.new("vol-123", :config => config) }

      let(:collection) { AttachmentCollection.new(volume, :config => config) }

      it_should_behave_like "an ec2 model object", Volume.new("vol-123")

      it_should_behave_like "enumerable"

      context '#initialize' do

        it 'should set the volume' do
          AttachmentCollection.new(volume).volume.should be(volume)
        end

      end

      context '#each' do

        let(:attachment_set) { [double("attachment 1",
                                       :instance_id => "i-123",
                                       :volume_id => "vol-123",
                                       :device => "/dev/sdf"),
                                double("attachment 2",
                                       :instance_id => "i-321",
                                       :volume_id => "vol-123",
                                       :device => "/dev/sdg")] }

        before(:each) do
          volume.stub(:attachment_set).and_return(attachment_set)
        end

        it 'yields attachments' do
          collection.each { |obj| obj.should be_an(Attachment) }
        end

        it 'passes the config' do
          collection.each { |obj| obj.config.should be(config) }
        end

        it 'should yield the right number of objects' do
          collection.to_a.size.should == 2
        end

        it 'should pass the instance ids' do
          collection.map { |att| att.instance.id }.
            should == ["i-123", "i-321"]
        end

        it 'should pass the volume' do
          collection.each { |att| att.volume.should be(volume) }
        end

        it 'should pass the devices' do
          collection.map { |att| att.device }.
            should == ["/dev/sdf", "/dev/sdg"]
        end

        it 'should pass the config to the instance' do
          collection.map { |att| att.instance.config }.each do |c|
            c.should be(config)
          end
        end

        it 'should pass the config to the attachment' do
          collection.each { |att| att.config.should be(config) }
        end

      end

    end

  end
end
