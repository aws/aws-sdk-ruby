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
  module Record
    shared_examples_for("optimistic lockable") do

      context 'optimistic locking' do

        it 'adds an integer_attribute with the given name' do
          klass.optimistic_locking :version_id
          klass.attributes['version_id'].should
            be_an(AWS::Record::Attributes::IntegerAttr)
        end

        it 'defaults the attribute name to version_id' do
          klass.optimistic_locking
          klass.attributes['version_id'].should
            be_an(AWS::Record::Attributes::IntegerAttr)
        end

        it 'provides a method to indicate if this class optimistically locks' do
          klass.optimistic_locking?.should == false
          klass.optimistic_locking # enable optimistic locking now
          klass.optimistic_locking?.should == true
        end

      end

    end
  end
end
