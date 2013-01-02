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
  class DynamoDB

    describe ItemData do

      context '#initialize' do

        it 'should store the item' do
          ItemData.new(:item => "foo").item.should == "foo"
        end

        it 'should store the attributes' do
          ItemData.new(:attributes => "bar").attributes.should == "bar"
        end

      end

    end

  end
end
