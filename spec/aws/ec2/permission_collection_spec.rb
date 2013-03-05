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

    describe PermissionCollection do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:image) { Image.new("ami-123", :config => config) }

      let(:collection) { PermissionCollection.new(image, :config => config) }

      it_should_behave_like "an ec2 model object", Image.new("ami-123")

      it_should_behave_like "enumerable"

      shared_examples_for "ec2 permission collection" do

        let(:resp) { client.new_stub_for(describe_call) }

        before(:each) do
          resp.data[response_field] = [
            { :user_id => "1234" },
            { :group => "all" },
          ]
          client.stub(describe_call).and_return(resp)
        end

        it 'should call the describe method' do
          client.should_receive(describe_call).
            with(describe_params).
            and_return(resp)
          collection.each { |p| }
        end

        it 'should include the user permission as a string' do
          collection.should include("1234")
        end

        it 'should not include the group permission' do
          collection.should_not include("all")
        end

        it 'should report the size without the group permission' do
          collection.size.should == 1
        end

        context '#empty?' do

          it 'should return true if the size is zero' do
            collection.stub(:size).and_return(0)
            collection.should be_empty
          end

          it 'should return false if the size is non-zero' do
            collection.stub(:size).and_return(12)
            collection.should_not be_empty
          end

        end

        it_should_behave_like 'has ec2 public?/private? accessors' do
          let(:instance) { collection }
        end

        context '#add' do

          it 'should call the modify_whatever_attribute method' do
            client.should_receive(modify_call).
              with(modify_params(:add => [{ :user_id => "1234" },
                                          { :user_id => "5678" }]))
            collection.add("1234", "5678")
          end

          it 'should do nothing if there are no arguments' do
            client.should_not_receive(modify_call)
            collection.add
          end

        end

        context '#remove' do

          it 'should call modify_image_attribute' do
            client.should_receive(modify_call).
              with(modify_params(:remove => [{ :user_id => "1234" },
                                             { :user_id => "5678" }]))
            collection.remove("1234", "5678")
          end

          it 'should do nothing if there are no arguments' do
            client.should_not_receive(modify_call)
            collection.remove
          end

        end

        context '#reset' do

          it 'should call the reset method' do
            client.should_receive(reset_call).
              with(reset_params)
            collection.reset
          end

        end

      end

      context 'representing snapshot create volume permissions' do

        let(:snapshot) { Snapshot.new("snap-123", :config => config) }

        let(:collection) { PermissionCollection.new(snapshot, :config => config) }

        let(:describe_call) { :describe_snapshot_attribute }

        let(:modify_call) { :modify_snapshot_attribute }

        let(:reset_call) { :reset_snapshot_attribute }

        let(:response_field) { :create_volume_permission }

        let(:describe_params) do
          { :snapshot_id => "snap-123",
            :attribute => "createVolumePermission" }
        end

        def modify_params(modifications)
          { :snapshot_id => "snap-123",
            :create_volume_permission => modifications }
        end

        let(:reset_params) { describe_params }

        it_should_behave_like "ec2 permission collection"

      end

      context 'representing image launch permissions' do

        let(:describe_call) { :describe_image_attribute }

        let(:modify_call) { :modify_image_attribute }

        let(:reset_call) { :reset_image_attribute }

        let(:response_field) { :launch_permission }

        let(:describe_params) do
          { :image_id => "ami-123",
            :attribute => "launchPermission" }
        end

        def modify_params(modifications)
          { :image_id => "ami-123",
            :launch_permission => modifications }
        end

        let(:reset_params) { describe_params }

        it_should_behave_like "ec2 permission collection"

      end

    end

  end
end
