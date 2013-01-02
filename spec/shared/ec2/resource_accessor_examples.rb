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
require 'delegate'

module AWS

  shared_examples_for 'accessor for ec2 resource' do

    before(:each) { instance.stub(id_accessor).and_return("resource-123") }

    it 'should return a resource object' do
      instance.send(accessor).should be_a(resource_class)
    end

    it 'should pass the id' do
      instance.send(accessor).send(:__resource_id__).should == "resource-123"
    end

    it 'should pass the config' do
      instance.send(accessor).config.should be(config)
    end

    it 'should return nil if there is no id' do
      instance.stub(id_accessor).and_return(nil)
      instance.send(accessor).should be_nil
    end

  end

end
