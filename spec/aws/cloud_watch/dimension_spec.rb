# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
  class CloudWatch
    describe Dimension do

      let(:dimension) { Dimension.new('foo', 'bar') }

      context '#to_hash' do

        it 'is equals' do
          dimension.to_hash.should == {:name => 'foo', :value => 'bar'}
        end

      end

      context '#==' do

        it 'is equals' do
          dimension.should == Dimension.new('foo', 'bar')
        end

        it 'is not equals' do
          dimension.should_not == Dimension.new('hoge', 'fuga')
        end

      end

    end
  end
end
