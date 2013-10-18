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

    describe Attachment do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:volume) { Volume.new("vol-123", :config => config) }

      let(:instance) { Instance.new("i-123", :config => config) }

      let(:attachment) { Attachment.new(volume, instance, "/dev/sdf",
                                        :config => config) }

      it_should_behave_like('an ec2 model object',
                            Volume.new("vol-123"),
                            Instance.new("i-123"),
                            "/dev/sdf")

      context '#initialize' do

        it 'should set the volume' do
          Attachment.new(volume, instance, "/dev/sdf").volume.should be(volume)
        end

        it 'should set the instance' do
          Attachment.new(volume, instance, "/dev/sdf").instance.should be(instance)
        end

        it 'should set the device' do
          Attachment.new(volume, instance, "/dev/sdf").device.should == "/dev/sdf"
        end

      end

      context '#delete' do

        let(:resp) { client.new_stub_for(:detach_volume) }

        before(:each) do
          resp.data[:volume_id] = 'vol-123'
          resp.data[:instance_id] = 'i-123'
          resp.data[:device] = '/dev/sdf'
          client.stub(:detach_volume).and_return(resp)
        end

        it 'should call detach_volume' do
          client.should_receive(:detach_volume).
            with(:volume_id => "vol-123",
                 :instance_id => "i-123",
                 :device => "/dev/sdf").
            and_return(resp)
          attachment.delete
        end

        it 'should pass additional options' do
          client.should_receive(:detach_volume).
            with(:volume_id => "vol-123",
                 :instance_id => "i-123",
                 :device => "/dev/sdf",
                 :foo => "bar").
            and_return(resp)
          attachment.delete(:foo => "bar")
        end

      end

      shared_examples_for "ec2 attachment attribute (attachment action)" do |action|

        let(:response) { client.stub_for(action) }

        before(:each) do
          response.data = {
            :volume_id => "vol-123",
            :instance_id => "i-123",
            :device => "/dev/sdf"
          }
        end

        let(:attributes) { attachment.attributes_from_response(response) }

        it 'should return nil if the volume ID does not match' do
          stub_value(response)
          response.data[:volume_id] = 'vol-321'
          attributes.should be_nil
        end

        it 'should return nil if the instance ID does not match' do
          stub_value(response)
          response.data[:instance_id] = 'i-321'
          attributes.should be_nil
        end

        it 'should return nil if the device does not match' do
          stub_value(response)
          response.data[:device] = '/dev/sdg'
          attributes.should be_nil
        end

        context 'not included in the response' do

          it 'should return nil' do
            attributes.should have_key(attribute)
            attributes[attribute].should be_nil
          end

        end

        context 'included in the response' do

          it 'should return the correct value' do
            stub_value(response)
            check_value(attributes[attribute])
          end

        end

      end

      shared_examples_for "ec2 attachment attribute" do

        let(:resp) { client.new_stub_for(:describe_volumes) }

        let(:response_volume) do
          {
            :attachment_set => [
              response_attachment,
              {
                :volume_id => "vol-321",
                :instance_id => "i-123",
                :device => "/dev/sdf",
              },{
                :volume_id => "vol-123",
                :instance_id => "i-321",
                :device => "/dev/sdf",
              },{
                :volume_id => "vol-123",
                :instance_id => "i-123",
                :device => "/dev/sdg",
              }
            ]
          }
        end

        let(:response_attachment) do
          {
            :volume_id => "vol-123",
            :instance_id => "i-123",
            :device => "/dev/sdf",
          }
        end

        before(:each) do
          resp.data[:volume_index] = { 'vol-123' => response_volume }
          client.stub(:describe_volumes).and_return(resp)
        end

        it 'should call describe_volumes' do
          client.should_receive(:describe_volumes).
            with(:volume_ids => ["vol-123"]).
            and_return(resp)
          attachment.send(attribute)
        end

        context 'when not returned by the service' do

          it 'should be nil' do
            attachment.send(attribute).should be_nil
          end

        end

        context 'when returned by the service' do

          it 'should return the correct value' do
            stub_value(response_attachment)
            check_value(attachment.send(attribute))
          end

        end

        context 'populated from attach_volume' do
          it_should_behave_like "ec2 attachment attribute (attachment action)", :attach_volume
        end

        context 'populated from detach_volume' do
          it_should_behave_like "ec2 attachment attribute (attachment action)", :detach_volume
        end

      end

      context '#status' do

        let(:attribute) { :status }

        it_should_behave_like "ec2 attachment attribute" do
          def stub_value(response_attachment)
            response_attachment[:status] = 'attaching'
          end
          def check_value(value)
            value.should == :attaching
          end
        end

      end

      context '#attach_time' do

        let(:attribute) { :attach_time }

        it_should_behave_like "ec2 attachment attribute" do
          def stub_value(response_attachment)
            response_attachment[:attach_time] = Time.parse("2008-05-07T12:51:50.000Z")
          end

          def check_value(value)
            value.should == Time.parse("2008-05-07T12:51:50.000Z")
          end
        end

      end

      context '#delete_on_termination?' do

        let(:attribute) { :delete_on_termination }

        it_should_behave_like "ec2 attachment attribute" do
          def stub_value(response_attachment)
            response_attachment[:delete_on_termination] = true
          end

          def check_value(value)
            value.should be_true
          end
        end

      end

      context '#exists?' do

        let(:resp) { client.new_stub_for(:describe_volumes) }

        let(:resp_volume) { double("volume",
                                   :attachment_set => resp_attachments) }

        before(:each) do
          resp.data[:volume_index] = volume_index
          client.stub(:describe_volumes).and_return(resp)
        end

        context 'when the attachment exists' do

          let(:resp_attachments) { [double("attachment",
                                           :volume_id => "vol-123",
                                           :instance_id => "i-123",
                                           :device => "/dev/sdf")] }

          let(:volume_index) { { "vol-123" => resp_volume } }

          it 'should return true' do
            attachment.exists?.should be_true
          end

        end

        context 'when the volume exists but the attachment does not' do

          let(:resp_attachments) { [double("attachment different volume",
                                           :volume_id => "vol-321",
                                           :instance_id => "i-123",
                                           :device => "/dev/sdf"),
                                    double("attachment different instance",
                                           :volume_id => "vol-123",
                                           :instance_id => "i-321",
                                           :device => "/dev/sdf"),
                                    double("attachment different device",
                                           :volume_id => "vol-123",
                                           :instance_id => "i-123",
                                           :device => "/dev/sdg")] }

          let(:volume_index) { { "vol-123" => resp_volume } }

          it 'should return false' do
            attachment.exists?.should be_false
          end

        end

        context 'when the volume does not exist' do

          let(:volume_index) { {} }

          it 'should return false' do
            attachment.exists?.should be_false
          end

        end

      end

      context '#==' do

        context 'same class' do

          it 'should return true if everything matches' do
            attachment.should == Attachment.new(volume, instance, "/dev/sdf")
          end

          it 'should return false if the volume does not match' do
            attachment.should_not == Attachment.new(Volume.new("vol-321"),
                                                    instance,
                                                    "/dev/sdf")
          end

          it 'should return false if the instance does not match' do
            attachment.should_not == Attachment.new(volume,
                                                    Instance.new("i-321"),
                                                    "/dev/sdf")
          end

          it 'should return false if the device does not match' do
            attachment.should_not == Attachment.new(volume,
                                                    instance,
                                                    "/dev/sdg")
          end

        end

        context 'different class' do

          it 'should return false' do
            attachment.should_not == double("not an attachment",
                                            :volume => volume,
                                            :instance => instance,
                                            :device => "/dev/sdf")
          end

        end

      end

    end

  end
end
