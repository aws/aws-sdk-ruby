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

    describe Session do

      context '#initialize' do

        it 'should store the credentials' do
          described_class.new(:credentials => { :foo => "bar" }).
            credentials.should == { :foo => "bar" }
        end

        it 'should store the expiration time' do
          t = Time.now
          described_class.new(:expires_at => t).
            expires_at.should == t
        end

      end

    end

  end
end
