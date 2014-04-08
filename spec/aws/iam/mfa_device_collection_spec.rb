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

    describe MFADeviceCollection do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:devices) { MFADeviceCollection.new(user) }

      context '#create' do

        it 'is an alias of #enable' do
          devices.method(:create).should == devices.method(:enable)
        end

      end

      context '#enable' do

        it 'call enable_mfa_device create_user on the client' do
          client.should_receive(:enable_mfa_device).with(
            :user_name => 'username',
            :serial_number => 'ABCXYZ123',
            :authentication_code_1 => '123456',
            :authentication_code_2 => '123123'
          )
          devices.enable('ABCXYZ123', 123456, 123123)
        end

        it 'returns an mfa device' do
          mfa_device = devices.enable('ABCXYZ123', 123456, 123123)
          mfa_device.should be_a(MFADevice)
          mfa_device.serial_number.should == 'ABCXYZ123'
          mfa_device.user.should == user
          mfa_device.config.should == config
        end

      end

      context '#[]' do

        it 'returns an mfa device' do
          mfa_device = devices['ABCXYZ123']
          mfa_device.should be_a(MFADevice)
          mfa_device.serial_number.should == 'ABCXYZ123'
          mfa_device.user.should == user
          mfa_device.config.should == config
        end

      end

      context '#clear' do

        it 'calls deactivate on each device' do
          device = double("device")
          device.should_receive(:deactivate)
          devices.stub(:each).and_yield(device)
          devices.clear
        end

      end

      it_behaves_like "a pageable collection with limits" do

        let(:collection)      { devices }
        let(:client_method)   { :list_mfa_devices }
        let(:next_token_key)  { :marker }
        let(:limit_key)       { :max_items }
        let(:request_options) {{ :user_name => user.name }}

        def stub_n_members response, n
          response.stub(:mfa_devices).and_return((1..n).collect{|i|
            double("mfa-device-#{i}", {
              :user_name => user.name,
              :serial_number => "ABC#{i}"
            })
          })
        end

        it_behaves_like "a collection that yields models" do

          let(:member_class) { MFADevice }

          it 'yields devices with populated serial numbers' do
            devices.collect{|d| d.serial_number }.should == %w(ABC1 ABC2)
          end

          it 'yields devies with the correct user' do
            devices.collect{|d| d.user }.should == [user, user]
          end

        end

        context 'virtual mfa devices' do

          def stub_n_members response, n
            response.stub(:mfa_devices).
              and_return((1..n).collect{|i|
                           double("virtual-mfa-device-#{i}", {
                                    :user_name => user.name,
                                    :serial_number => "arn:#{i}"
                                  })
                         })
          end

          it_behaves_like "a collection that yields models" do

            let(:member_class) { VirtualMfaDevice }

            it 'yields devices with populated ARNs' do
              devices.collect{|d| d.arn }.should == %w(arn:1 arn:2)
            end

          end

        end

      end

    end

  end
end
