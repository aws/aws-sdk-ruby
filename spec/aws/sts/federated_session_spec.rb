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
  class STS

    describe FederatedSession do

      context '#initialize' do

        it 'should store the user ID' do
          described_class.new(:user_id => "foo").user_id.should == "foo"
        end

        it 'should store the user ARN' do
          described_class.new(:user_arn => "foo").user_arn.should == "foo"
        end

        it 'should store the packed policy size' do
          described_class.new(:packed_policy_size => 12).
            packed_policy_size.should == 12
        end

      end

    end

  end
end
