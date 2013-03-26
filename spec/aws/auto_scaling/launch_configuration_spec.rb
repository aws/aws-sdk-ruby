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
require 'base64'

module AWS
  class AutoScaling
    describe LaunchConfiguration do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:launch_config) { LaunchConfiguration.new('name', :config => config) }

      let(:response) { client.stub_for(:describe_launch_configurations) }

      let(:now) { Time.now }

      let(:groups) { [] }

      let(:details) {
        {
          :launch_configuration_name => launch_config.name,
          :created_time => now,
          :image_id => 'img-12345678',
          :instance_monitoring => { :enabled => false },
          :instance_type => 'instance-type',
          :kernel_id => 'kernel-id',
          :key_name => 'key-name',
          :launch_configuration_arn => 'arn',
          :ramdisk_id => 'ramdisk-id',
          :user_data => Base64.encode64('user-data'),
          :block_device_mappings => [
            { :mapping => 1 },
            { :mapping => 2 },
          ],
          :security_groups => groups,
          :iam_instance_profile => 'iam-profile',
          :spot_price => '123.45',
        }
      }

      before(:each) do
        response.data[:launch_configurations] = [details]
        client.stub(:describe_launch_configurations).and_return(response)
      end

      context '#name' do

        it 'is set in the constructor' do
          LaunchConfiguration.new('name').name.should == 'name'
        end

      end

      context 'attributes' do

        it 'returns attributes from the describe call' do
          launch_config.created_at.should == now
          launch_config.image_id.should == 'img-12345678'
          launch_config.detailed_instance_monitoring.should == false
          launch_config.instance_type.should == 'instance-type'
          launch_config.kernel_id.should == 'kernel-id'
          launch_config.key_name.should == 'key-name'
          launch_config.arn.should == 'arn'
          launch_config.ramdisk_id.should == 'ramdisk-id'
          launch_config.user_data.should == 'user-data'
          launch_config.block_device_mappings.should == [
            { :mapping => 1 },
            { :mapping => 2 },
          ]
          launch_config.iam_instance_profile.should == 'iam-profile'
          launch_config.spot_price.should == '123.45'
        end

      end

      context '#security_groups' do

        it 'returns security groups with id patterns' do
          groups
          groups << 'sg-12345678'
          groups << 'sg-22345678'
          launch_config.security_groups.should == [
            EC2::SecurityGroup.new('sg-12345678', :config => config),
            EC2::SecurityGroup.new('sg-22345678', :config => config),
          ]
        end

        it 'describes security groups with a filter if given names' do

          ec2_client = config.ec2_client

          resp = ec2_client.stub_for(:describe_security_groups)
          resp.data[:security_group_info] = [
            { :group_id => 'sg-12345678' },
            { :group_id => 'sg-22345678' },
          ]

          ec2_client.should_receive(:describe_security_groups).
            with(:filters => [{ :name => 'group-name', :values => %w(sg1 sg2)}]).
            and_return(resp)

          groups
          groups << 'sg1'
          groups << 'sg2'

          launch_config.security_groups.should == [
            EC2::SecurityGroup.new('sg-12345678', :config => config),
            EC2::SecurityGroup.new('sg-22345678', :config => config),
          ]
        end

      end

      context '#key_pair' do

        it 'returns an ec2 key pair' do
          launch_config.key_pair.should be_a(EC2::KeyPair)
          launch_config.key_pair.name.should == 'key-name'
          launch_config.key_pair.config.should == config
        end

      end

      context '#image' do

        it 'returns an ec2 image' do
          launch_config.image.should be_a(EC2::Image)
          launch_config.image.id.should == 'img-12345678'
          launch_config.image.config.should == config
        end

      end

      context '#exists?' do

        it 'describes launch configurations with a name filter' do
          response.data[:launch_configurations] = [
            { :launch_configuration_name => 'name' },
          ]
          launch_config.exists?.should == true
        end

        it 'returns false when the domain can not be described' do
          response.data[:launch_configurations] = []
          launch_config.exists?.should == false
        end

      end

      context '#delete' do

        it 'calls #delete_launch_configuration on the client' do
          client.should_receive(:delete_launch_configuration).
            with(:launch_configuration_name => launch_config.name)
          launch_config.delete
        end

      end

    end
  end
end
