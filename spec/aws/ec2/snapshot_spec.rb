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

    describe Snapshot do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:snapshot) { Snapshot.new("snap-123", :config => config) }

      let(:response_id_field) { :snapshot_id }

      let(:resource_id) { 'snap-123' }

      let(:describe_call) { :describe_snapshots }

      let(:describe_opts) { { :snapshot_ids => ["snap-123"] } }

      let(:instance) { snapshot }

      def stub_member(resp, member)
        resp.data[:snapshot_index] = { member[:snapshot_id] => member }
      end

      it_should_behave_like 'an ec2 resource object'

      it_should_behave_like "a tagged ec2 item" do
        let(:taggable) { snapshot }
        def stub_tags(resp, tags)
          stub_member(resp, :snapshot_id => "snap-123", :tag_set => tags)
        end
      end

      context '#initialize' do

        it 'should set the snapshot id' do
          Snapshot.new("snap-123").id.should == "snap-123"
        end

      end

      context '#delete' do

        it 'should call delete_snapshot' do
          client.should_receive(:delete_snapshot).
            with(:snapshot_id => "snap-123")
          snapshot.delete
        end

      end

      context '#create_volume' do

        let(:volumes) { VolumeCollection.new(:config => config) }

        before(:each) do
          volumes.stub(:create).and_return(Volume.new("vol-123"))
          VolumeCollection.stub(:new).and_return(volumes)
        end

        it 'should call VolumeCollection#create' do
          volumes.should_receive(:create).with(:snapshot => snapshot,
                                               :availability_zone => "us-east-1a")
          snapshot.create_volume("us-east-1a")
        end

        it 'should pass additional options' do
          volumes.should_receive(:create).with(:snapshot => snapshot,
                                               :availability_zone => "us-east-1a",
                                               :foo => "bar")
          snapshot.create_volume("us-east-1a", :foo => "bar")
        end

        it 'should return the created volume' do
          snapshot.create_volume("us-east-1a").should == Volume.new("vol-123")
        end

        it 'should pass the config' do
          VolumeCollection.should_receive(:new).
            with(:config => config).
            and_return(volumes)
          snapshot.create_volume("us-east-1a")
        end

      end

      context '#exists?' do
        let(:id_filter) { "snapshot-id" }
        def stub_exists(resp)
          resp.data[:snapshot_set] = [{ :snapshot_id => 'snap-123' }]
        end
        it_should_behave_like "ec2 resource exists method"
      end

      context 'attributes' do

        shared_examples_for "ec2 snapshot attribute accessor" do

          it_should_behave_like "ec2 resource attribute accessor (describe call)"

          context 'populate from create_snapshot' do

            let(:response) { client.stub_for(:create_snapshot) }

            let(:attributes) { snapshot.attributes_from_response(response) }

            before(:each) do
              response.data[:snapshot_id] = 'snap-123'
            end

            it 'should not populate unless the snapshot ID matches' do
              response.data[:snapshot_id] = 'snap-321'
              attributes.should be_nil
            end

            context 'when returned by the service' do
              it 'should populate the translated value' do
                response.data[response_field] = response_value
                attributes[attribute].should == translated_value
              end
            end

          end

        end

        context '#volume_id' do
          let(:attribute) { :volume_id }
          let(:response_field) { attribute }
          let(:response_value) { "vol-123" }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#volume' do
          let(:accessor) { :volume }
          let(:resource_class) { Volume }
          let(:id_accessor) { :volume_id }
          let(:instance) { snapshot }
          it_should_behave_like 'accessor for ec2 resource'
        end

        context '#status' do
          let(:attribute) { :status }
          let(:response_field) { attribute }
          let(:response_value) { "pending" }
          let(:translated_value) { :pending }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#start_time' do
          let(:attribute) { :start_time }
          let(:response_field) { attribute }
          let(:response_value) { Time.parse("2008-05-07T12:51:50.000Z") }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#progress' do
          let(:attribute) { :progress }
          let(:response_field) { attribute }
          let(:response_value) { "80%" }
          let(:translated_value) { 80 }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#owner_id' do
          let(:attribute) { :owner_id }
          let(:response_field) { attribute }
          let(:response_value) { "1234" }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#volume_size' do
          let(:attribute) { :volume_size }
          let(:response_field) { attribute }
          let(:response_value) { 12 }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#owner_alias' do
          let(:attribute) { :owner_alias }
          let(:response_field) { attribute }
          let(:response_value) { "abc" }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        context '#description' do
          let(:attribute) { :description }
          let(:response_field) { attribute }
          let(:response_value) { "abc" }
          let(:translated_value) { response_value }
          it_should_behave_like "ec2 snapshot attribute accessor"
        end

        it_should_behave_like 'has ec2 public?/private? accessors' do
          let(:describe_call) { :describe_snapshot_attribute }
          let(:describe_params) do
            { :snapshot_id => "snap-123",
              :attribute => "createVolumePermission" }
          end
          let(:modify_call) { :modify_snapshot_attribute }
          def modify_params(modification)
            { :snapshot_id => "snap-123",
              :create_volume_permission => modification }
          end
          let(:instance) { snapshot }
          let(:response_field) { :create_volume_permission }
        end

        context '#create_volume_permissions' do

          it 'should return a permissions collection' do
            snapshot.create_volume_permissions.should be_a(PermissionCollection)
          end

          it 'should pass the snapshot and config' do
            PermissionCollection.should_receive(:new).
              with(snapshot, :config => config)
            snapshot.create_volume_permissions
          end

        end

      end

    end

  end
end
