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

    describe MFADevice do

      let(:config) { stub_config }

      let(:client) { config.iam_client }

      let(:user) { User.new('username', :config => config) }

      let(:device) { MFADevice.new(user, 'ABCXYZ123') }

      context '#user' do

        it 'returns the mfa device owner/user' do
          device.user.should == user
        end

      end

      context '#serial_number' do

        it 'returns the mfa device serial number' do
          device.serial_number.should == 'ABCXYZ123'
        end

      end

      context '#deactivate' do

        it 'calls deactivate_mfa_device on the client' do
          client.should_receive(:deactivate_mfa_device).with({
            :user_name => 'username',
            :serial_number => 'ABCXYZ123',
          })
          device.deactivate
        end

      end

      context '#delete' do

        it 'is an alias of #deactivate' do
          device.method(:delete).should == device.method(:deactivate)
        end

      end

    end

  end

end
