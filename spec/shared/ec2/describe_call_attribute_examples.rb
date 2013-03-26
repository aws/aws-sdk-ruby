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

  shared_examples_for "ec2 resource attribute accessor (describe call)" do

    let(:resp) { client.stub_for(describe_call) }

    let(:response_resource) {{}}

    before(:each) do
      response_resource[response_id_field] = resource_id
      stub_member(resp, response_resource)
      client.stub(describe_call).and_return(resp)
    end

    context 'when returned by the service' do

      before(:each) do
        response_resource[response_field] = response_value
      end

      it 'should call the describe call' do
        client.should_receive(describe_call).
          with(describe_opts).
          and_return(resp)
        instance.send(attribute)
      end

      it 'should return the translated attribute value' do
        instance.send(attribute).should == translated_value
      end

    end

    context 'when not returned by the service' do

      it 'should return nil if the field is not set' do
        instance.send(attribute).should be_nil
      end

    end

  end

end
