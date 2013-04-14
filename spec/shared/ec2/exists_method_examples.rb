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

  shared_examples_for "ec2 resource exists method" do

    context '#exists?' do

      let(:config) { stub_config }

      let(:client) { config.ec2_client }

      let(:resp) { client.new_stub_for(describe_call) }

      let(:resource) { described_class.new("resource-123", :config => config) }

      before(:each) do
        client.stub(describe_call).
          and_return(resp)
      end

      it 'should call describe_volumes' do
        client.should_receive(describe_call).
          with(:filters => [{ :name => id_filter,
                              :values => ["resource-123"] }]).
          and_return(resp)
        resource.exists?
      end

      it 'should return false when the resource does not exist' do
        resource.exists?.should be_false
      end

      it 'should return true when the resource exists' do
        stub_exists(resp)
        resource.exists?.should be_true
      end

    end

  end

end
