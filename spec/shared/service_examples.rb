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

shared_examples_for "a service interface" do

  let(:config) { stub_config }

  it "accepts a configuration" do
    described_class.new(:config => stub_config).config.should eq(config)
  end

end

shared_examples_for "a service collection" do |method_name, collection_class|

  it "should return an instance of #{collection_class}" do
    service.send(method_name).should be_an(collection_class)
  end

  it 'should pass the config' do
    service.send(method_name).config.should == service.config
  end

end
