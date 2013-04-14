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
  class SimpleWorkflow
    describe Count do

      context '#count' do

        it 'returns the value passed to new' do
          Count.new(10,false).count.should == 10
          Count.new(11,false).count.should == 11
        end

      end

      context '#to_i' do

        it 'is an alias of #count' do
          count = Count.new(10, false)
          count.method(:to_i).should == count.method(:count)
        end

      end

      context '#truncated?' do

        it 'returns the value passed to new' do
          Count.new(10,false).truncated?.should == false
          Count.new(10,true).truncated?.should == true
        end

      end

      context '#==' do

        it 'returns true if they have the same count and truncated' do
          Count.new(0,false).should == Count.new(0,false)
        end

        it 'returns false if the counts differ' do
          Count.new(0,false).should_not == Count.new(1,false)
        end

        it 'returns false if the truncated? status differs' do
          Count.new(0,false).should_not == Count.new(0,true)
        end

      end

    end
  end
end
