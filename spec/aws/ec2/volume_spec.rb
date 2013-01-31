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

    describe Volume do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:volume) { Volume.new("vol-123", :config => config) }

      let(:response_id_field) { :volume_id }

      let(:resource_id) { 'vol-123' }

      let(:describe_call) { :describe_volumes }

      let(:describe_opts) { { :volume_ids => ["vol-123"] } }

      let(:instance) { volume }

      def stub_member(resp, member)
        resp[:volume_index][member[:volume_id]] = member
      end

      it_should_behave_like 'an ec2 resource object'

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { volume }
        def stub_tags(resp, tags)
          stub_member(resp, :volume_id => "vol-123", :tag_set => tags)
        end
      end

      context '#initialize' do

        it 'should set the id' do
          Volume.new("vol-123", :config => config).id.should == "vol-123"
        end

      end

      context '#delete' do

        it 'should call delete_volume' do
          client.should_receive(:delete_volume).
            with(:volume_id => "vol-123")
          volume.delete
        end

      end

      context '#create_snapshot' do

        let(:resp) { client.new_stub_for(:create_snapshot) }

        before(:each) do
          resp.stub(:snapshot_id).and_return("snap-123")
          client.stub(:create_snapshot).and_return(resp)
        end

        it 'should call create_snapshot' do
          client.should_receive(:create_snapshot).
            with(:volume_id => "vol-123").
            and_return(resp)
          volume.create_snapshot
        end

        it 'should pass the description if provided' do
          client.should_receive(:create_snapshot).
            with(:volume_id => "vol-123",
                 :description => "foo").
            and_return(resp)
          volume.create_snapshot("foo")
        end

        it 'should return a snapshot' do
          volume.create_snapshot.should be_a(Snapshot)
        end

      end

      shared_examples_for "returns an attachment" do |method, *args|

        it 'should return an attachment object' do
          volume.send(method, *args).should be_an(Attachment)
        end

        it 'should pass the instance' do
          volume.send(method, *args).instance.
            should == Instance.new("i-123", :config => config)
        end

        it 'should pass the volume' do
          volume.send(method, *args).volume.
            should == volume
        end

        it 'should pass the device' do
          volume.send(method, *args).device.should == "/dev/sdf"
        end

        it 'should pass the config' do
          volume.send(method, *args).config.should be(config)
        end

      end

      context '#attach_to' do

        let(:resp) { client.new_stub_for(:attach_volume) }

        before(:each) do
          resp.stub(:volume_id).and_return("vol-123")
          resp.stub(:instance_id).and_return("i-123")
          resp.stub(:device).and_return("/dev/sdf")
          client.stub(:attach_volume).and_return(resp)
        end

        let(:required_args) { [Instance.new("i-123"), "/dev/sdf"] }

        it 'should call attach_volume' do
          client.should_receive(:attach_volume).
            with(:volume_id => "vol-123",
                 :instance_id => "i-123",
                 :device => "/dev/sdf").
            and_return(resp)
          volume.attach_to(*required_args)
        end

        it_should_behave_like("returns an attachment",
                              :attach_to, Instance.new("i-123"), "/dev/sdf")

      end

      context '#detach_from' do

        let(:resp) { client.new_stub_for(:detach_volume) }

        before(:each) do
          resp.stub(:volume_id).and_return("vol-123")
          resp.stub(:instance_id).and_return("i-123")
          resp.stub(:device).and_return("/dev/sdf")
          client.stub(:detach_volume).and_return(resp)
        end

        let(:required_args) { [Instance.new("i-123"), "/dev/sdf"] }

        it 'should call detach_volume' do
          client.should_receive(:detach_volume).
            with(:volume_id => "vol-123",
                 :instance_id => "i-123",
                 :device => "/dev/sdf").
            and_return(resp)
          volume.detach_from(Instance.new("i-123"), "/dev/sdf")
        end

        it_should_behave_like("returns an attachment",
                              :detach_from, Instance.new("i-123"), "/dev/sdf")

      end

      context '#attachments' do

        it 'should return an attachment collection' do
          volume.attachments.should be_an(AttachmentCollection)
        end

        it 'should pass the volume' do
          volume.attachments.volume.should be(volume)
        end

        it 'should pass the config' do
          volume.attachments.config.should be(config)
        end

      end

      context 'exists?' do
        let(:id_filter) { "volume-id" }
        def stub_exists(resp)
          stub_member(resp, :volume_id => resource.id)
        end
        it_should_behave_like "ec2 resource exists method"
      end

      shared_examples_for "ec2 volume attribute accessor" do

        it_should_behave_like "ec2 resource attribute accessor (describe call)" do

          context 'populated from create_volume' do

            let(:response) { client.stub_for(:create_volume) }

            before(:each) do
              response.data = { :volume_id => "vol-123" }
            end

            it 'should not populate when the volume ID does not match' do
              response.data[:volume_id] = 'vol-321'
              instance.attributes_from_response(response).should be_nil
            end

            context 'when returned by the service' do

              before(:each) do
                response.data[response_field] = response_value
              end

              it 'should return the translated attribute value' do
                instance.attributes_from_response(response)[attribute].
                  should == translated_value
              end

            end

            context 'when not returned by the service' do

              it 'should return nil if the field is not set' do
                instance.attributes_from_response(response)[attribute].
                  should be_nil
              end

            end

          end

        end

      end

      context '#status' do
        let(:attribute) { :status }
        let(:response_field) { attribute }
        let(:response_value) { "in-use" }
        let(:translated_value) { :in_use }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#snapshot_id' do
        let(:attribute) { :snapshot_id }
        let(:response_field) { attribute }
        let(:response_value) { "snap-123" }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#snapshot' do
        let(:accessor) { :snapshot }
        let(:id_accessor) { :snapshot_id }
        let(:resource_class) { Snapshot }
        it_should_behave_like "accessor for ec2 resource"
      end

      context '#size' do
        let(:attribute) { :size }
        let(:response_field) { attribute }
        let(:response_value) { 80 }
        let(:translated_value) { 80 }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#create_time' do
        let(:attribute) { :create_time }
        let(:response_field) { attribute }
        let(:response_value) { Time.parse("2008-05-07T11:51:50.000Z") }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#availability_zone_name' do
        let(:attribute) { :availability_zone_name }
        let(:response_field) { :availability_zone }
        let(:response_value) { "us-east-1a" }
        let(:translated_value) { "us-east-1a" }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#availability_zone' do
        let(:accessor) { :availability_zone }
        let(:id_accessor) { :availability_zone_name }
        let(:resource_class) { AvailabilityZone }
        it_should_behave_like "accessor for ec2 resource"
      end

      context '#attachment_set' do
        let(:attribute) { :attachment_set }
        let(:response_field) { attribute }
        let(:response_value) { [] }
        let(:translated_value) { response_value }
        it_should_behave_like "ec2 volume attribute accessor"
      end

      context '#iops' do
        let(:attribute) { :iops }
        let(:response_field) { attribute }
        let(:response_value) { "iops" }
        let(:translated_value) { "iops" }
        it_should_behave_like "ec2 volume attribute accessor"
      end

    end

  end
end
