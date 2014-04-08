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

    describe VirtualMfaDevice do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:device) { described_class.new("arn", :config => config) }

      context '#initialize' do

        it 'should store the arn' do
          device.arn.should == "arn"
        end

      end

      context '#serial_number' do

        it 'returns the device serial number' do
          device.serial_number.should == 'arn'
        end

        it 'is aliased to #arn' do
          device.arn.should == device.serial_number
        end

      end

      context '#delete' do

        it 'should call delete_virtual_mfa_device' do
          client.should_receive(:delete_virtual_mfa_device).
            with(:serial_number => "arn")
          device.delete
        end

        it 'should return nil' do
          device.delete.should be_nil
        end

      end

      context '#enable' do

        it 'should call enable_mfa_device' do
          client.should_receive(:enable_mfa_device).
            with(:user_name => "username",
                 :serial_number => "arn",
                 :authentication_code_1 => "123456",
                 :authentication_code_2 => "654321")
          device.enable(User.new("username"), "123456", "654321")
        end

        it 'should stringify the codes' do
          client.should_receive(:enable_mfa_device).
            with(:user_name => "username",
                 :serial_number => "arn",
                 :authentication_code_1 => "123456",
                 :authentication_code_2 => "654321")
          device.enable(User.new("username"), 123456, 654321)
        end

        it 'should pad numeric codes with leading zeroes' do
          client.should_receive(:enable_mfa_device).
            with(:user_name => "username",
                 :serial_number => "arn",
                 :authentication_code_1 => "012345",
                 :authentication_code_2 => "654321")
          device.enable(User.new("username"), 12345, 654321)
        end

        it 'accepts input like "099999"' do
          client.should_receive(:enable_mfa_device).with(hash_including(
            :authentication_code_1 => '099999',
            :authentication_code_2 => '098765'
          ))
          device.enable('username', '099999', '098765')
        end

        it 'should use the user name directly if passed as a string' do
          client.should_receive(:enable_mfa_device).
            with(hash_including(:user_name => "username"))
          device.enable("username", 12345, 654321)
        end

        it 'should return nil' do
          device.enable(User.new("username"), "123456", "654321").
            should be_nil
        end

      end

      context 'newly created devices' do

        let(:device) {
          VirtualMfaDevice.new('arn',
            :base_32_string_seed => 'seed',
            :qr_code_png => 'png')
        }

        it 'returns the seed and qr code png' do
          device.base_32_string_seed.should == 'seed'
          device.qr_code_png.should == 'png'
        end

      end

      context 'existing devices' do

        let(:response) { client.stub_for(:list_virtual_mfa_devices) }

        let(:now) { DateTime.now }

        let(:details) {{
          :serial_number => device.arn,
          :user => { :user_name => 'johndoe' },
          :enable_date => now,
        }}

        before(:each) do
          response.data[:virtual_mfa_devices] = [details]
          client.stub(:list_virtual_mfa_devices).and_return(response)
        end

        context '#user' do

          it 'defaults to nil' do
            details.delete(:user)
            device.user.should == nil
          end

          it 'returns the user when provided' do
            device.user.should ==
              AWS::IAM::User.new('johndoe', :config => device.config)
          end

        end

        context '#deactivate' do

          it 'should call deactivate_mfa_device' do
            client.should_receive(:deactivate_mfa_device).
              with(:user_name => "johndoe", :serial_number => "arn")
            device.deactivate
          end

          it 'should return nil' do
            device.deactivate.should be_nil
          end

        end

        context '#enable_date' do

          it 'returns nil when not present' do
            details.delete(:enable_date)
            device.enable_date.should == nil
          end

          it 'returns the datetime value when present' do
            device.enable_date.should == now
          end

          it 'returns true from enabled? when present' do
            device.enabled?.should == true
          end

          it 'returns false from enabled? when missing' do
            details.delete(:enable_date)
            device.enabled?.should == false
          end

        end

        context '#base_32_string_seed' do

          it 'returns nil, only accessible on newly created devices' do
            device.base_32_string_seed.should == nil
          end

        end

        context '#qr_code_png' do

          it 'returns nil, only accessible on newly created devices' do
            device.qr_code_png.should == nil
          end

        end

      end

    end

  end
end
