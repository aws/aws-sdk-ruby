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
  class IAM

    describe VirtualMfaDeviceCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:devices) { described_class.new(:config => config) }

      context '#[]' do

        it 'returns a virtual mfa device' do
          devices['device-arn'].should be_a(VirtualMfaDevice)
        end

        it 'returns a virtual mfa device with the correct arn' do
          devices['device-arn'].arn.should == 'device-arn'
        end

        it 'returns a virtual mfa device with the correct config' do
          devices['device-arn'].config.should == devices.config
        end

      end

      context '#create' do

        let(:response) { client.stub_for(:create_virtual_mfa_device) }

        before(:each) do
          response.data[:virtual_mfa_device] = {
            :serial_number => "arn",
            :base_32_string_seed => 'seed',
            :qr_code_png => 'png',
          }
          client.stub(:create_virtual_mfa_device).and_return(response)
        end

        it 'should call create_virtual_mfa_device' do
          client.should_receive(:create_virtual_mfa_device).
            with(:virtual_mfa_device_name => "mfa1").
            and_return(response)
          devices.create("mfa1")
        end

        it 'should pass additional options to the client' do
          client.should_receive(:create_virtual_mfa_device).
            with(hash_including(:foo => "bar")).
            and_return(response)
          devices.create("mfa1", :foo => "bar")
        end

        it 'should return a virtual MFA device' do
          device = devices.create("mfa1")
          device.should be_a(VirtualMfaDevice)
          device.config.should be(config)
          device.serial_number.should == "arn" # value from the response
          device.base_32_string_seed.should == 'seed'
          device.qr_code_png.should == 'png'
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)     { devices }
        let(:client_method)  { :list_virtual_mfa_devices }
        let(:next_token_key) { :marker }
        let(:limit_key)      { :max_items }

        def stub_n_members response, n
          response.data[:virtual_mfa_devices] = (1..n).collect{|i|
            { :serial_number => "device#{i}" }
          }
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { VirtualMfaDevice }

          it 'yields devices with populated arns' do
            devices.collect { |d| d.arn }.should == %w(device1 device2)
          end

        end

      end

    end

  end
end
