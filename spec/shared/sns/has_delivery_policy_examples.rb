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
  class SNS
    shared_examples_for "it has a delivery policy" do

      let(:delivery_policy_json) { '{}' }

      let(:effective_delivery_policy_json) { '{}' }

      let(:response) { client.stub_for(get_method) }

      let(:attributes) {{
        'DeliveryPolicy' => delivery_policy_json,
        'EffectiveDeliveryPolicy' => effective_delivery_policy_json,
      }}

      before(:each) do
        response.stub(:attributes).and_return(attributes)
        client.stub(get_method).and_return(response)
      end

      context '#delivery_policy_json' do

        it 'returns the raw json' do
          object.delivery_policy_json.should == delivery_policy_json
        end

        it 'returns nil if the policy is not present' do
          attributes.delete('DeliveryPolicy')
          object.delivery_policy_json.should == nil
        end

      end

      context '#delivery_policy' do

        it 'returns nil if the policy is not present' do
          attributes.delete('DeliveryPolicy')
          object.delivery_policy.should == nil
        end

      end

      context '#effective_delivery_policy_json' do

        it 'returns the raw json' do
          object.effective_delivery_policy_json.should ==
            effective_delivery_policy_json
        end

        it 'returns nil if the policy is not present' do
          attributes.delete('EffectiveDeliveryPolicy')
          object.effective_delivery_policy_json.should == nil
        end

      end

      context '#effective_delivery_policy' do

        it 'returns the parsed json' do
          object.effective_delivery_policy.should ==
            JSON.parse(effective_delivery_policy_json)
        end

      end

      context '#delivery_policy=' do

        it 'calls the set attributes client method' do

          client.should_receive(set_method).with(
            arn_key => object.arn,
            :attribute_name => 'DeliveryPolicy',
            :attribute_value => 'json')

          object.delivery_policy = 'json'

        end

        it 'calls #to_json on non-string arguments' do

          policy = double('delivery-policy', :to_json => 'json')

          client.should_receive(set_method).with(
            arn_key => object.arn,
            :attribute_name => 'DeliveryPolicy',
            :attribute_value => 'json')

          object.delivery_policy = policy

        end

        it 'passes an empty string when the policy is nil' do

          client.should_receive(set_method).with(
            arn_key => object.arn,
            :attribute_name => 'DeliveryPolicy',
            :attribute_value => '')

          object.delivery_policy = nil

        end

      end

    end
  end
end
