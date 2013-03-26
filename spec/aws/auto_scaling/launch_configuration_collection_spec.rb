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

require 'base64'
require 'spec_helper'

module AWS
  class AutoScaling
    describe LaunchConfigurationCollection do

      let(:config) { stub_config }

      let(:client) { config.auto_scaling_client }

      let(:launch_configurations) {
        LaunchConfigurationCollection.new(:config => config)
      }

      context '#create' do

        it 'calls #create_launch_configuration on the client' do

          client.should_receive(:create_launch_configuration).with(
            :launch_configuration_name => 'name',
            :image_id => 'image',
            :instance_type => 'type')

          launch_configurations.create('name', 'image', 'type')

        end

        it 'returns a launch configuration object' do
          launch_config = launch_configurations.create('name', 'image', 'type')
          launch_config.should be_a(LaunchConfiguration)
          launch_config.name.should == 'name'
          launch_config.image_id.should == 'image'
          launch_config.instance_type.should == 'type'
          launch_config.config.should == config
        end

        it 'accepts a hash of options' do

          client.should_receive(:create_launch_configuration).with({
            :launch_configuration_name => 'name',
            :image_id => 'image',
            :instance_type => 'type',
            :block_device_mappings => [
              {
                :device_name => '/dev/sda1',
                :virtual_name => 'ephemeral0',
              },
              {
                :device_name => '/dev/sda1',
                :ebs => {
                  :snapshot_id => 'snap-id',
                  :volume_size => 10,
                },
              },
            ],
            :instance_monitoring => { :enabled => false },
            :kernel_id => 'kernel-id',
            :key_name => 'key-pair-name',
            :ramdisk_id => 'ramdisk-id',
            :security_groups => %w(sg-12345678 sg-22345678),
            :user_data => Base64.encode64('user-data'),
            :iam_instance_profile => 'iam-profile',
            :spot_price => '123.45',
          })

          launch_configurations.create('name', 'image', 'type', {
            :block_device_mappings => [
              {
                :device_name => '/dev/sda1',
                :virtual_name => 'ephemeral0',
              },
              {
                :device_name => '/dev/sda1',
                :ebs => {
                  :snapshot_id => 'snap-id',
                  :volume_size => 10,
                },
              },
            ],
            :detailed_instance_monitoring => false,
            :kernel_id => 'kernel-id',
            :key_pair => 'key-pair-name',
            :ramdisk_id => 'ramdisk-id',
            :security_groups => %w(sg-12345678 sg-22345678),
            :user_data => 'user-data',
            :iam_instance_profile => 'iam-profile',
            :spot_price => '123.45',
          })
        end

        it 'accpets security group objects and it passes along their ids' do

          groups = [
            EC2::SecurityGroup.new('sg-1'),
            EC2::SecurityGroup.new('sg-2'),
          ]

          client.should_receive(:create_launch_configuration).
            with(hash_including(:security_groups => groups.map(&:id)))

          launch_configurations.create('name', 'image', 'type',
            :security_groups => groups)

        end

        it 'accpets a key pair object and passes along its name' do

          key_pair = EC2::KeyPair.new('key-pair-name')

          client.should_receive(:create_launch_configuration).
            with(hash_including(:key_name => key_pair.name))

          launch_configurations.create('name', 'image', 'type',
            :key_pair => key_pair)

        end

      end

      context '#[]' do

        it 'returns a launch configuration' do
          launch_config = launch_configurations['name']
          launch_config.should be_a(LaunchConfiguration)
          launch_config.name.should == 'name'
          launch_config.config.should == config
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { launch_configurations }
        let(:client_method)   { :describe_launch_configurations }
        let(:next_token_key)  { :next_token }
        let(:limit_key)       { :max_records }
        let(:request_options) {{}}

        def stub_next_token(response, token)
          response.data[:next_token] = token
        end

        def stub_n_members response, n
          response.data[:launch_configurations] = (1..n).map{|i|
            { :launch_configuration_name => i.to_s }
          }
        end

      end

    end
  end
end
