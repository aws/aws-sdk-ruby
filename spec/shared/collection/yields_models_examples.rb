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

### deprecated ###
#
# this is tested by "a core collection"
#
shared_examples_for "a collection that yields models" do

  before(:each) do
    stub_n_members(response, 2)
  end

  it 'yields the correct number of objects' do
    collection.to_a.size.should eq(2)
  end

  it 'yields instances of the member class' do
    collection.each{|obj| obj.should be_a(member_class) }
  end

  it 'yields objects with the correct configuration' do
    collection.each{|obj| obj.config.should eq(collection.config) }
  end

end
