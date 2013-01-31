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

  shared_examples_for "it has reserved instance attributes" do

    context '#instance_type' do
      let(:attribute) { :instance_type }
      let(:response_field) { attribute }
      let(:response_value) { "c1.medium" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#availability_zone' do
      let(:attribute) { :availability_zone }
      let(:response_field) { attribute }
      let(:response_value) { "us-east-1d" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#duration' do
      let(:attribute) { :duration }
      let(:response_field) { attribute }
      let(:response_value) { 94608000 }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#fixed_price' do
      let(:attribute) { :fixed_price }
      let(:response_field) { attribute }
      let(:response_value) { 700.0 }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#usage_price' do
      let(:attribute) { :usage_price }
      let(:response_field) { attribute }
      let(:response_value) { 0.06 }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#product_description' do
      let(:attribute) { :product_description }
      let(:response_field) { attribute }
      let(:response_value) { "Linux/UNIX" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#instance_tenancy' do
      let(:attribute) { :instance_tenancy }
      let(:response_field) { attribute }
      let(:response_value) { "default" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#currency_code' do
      let(:attribute) { :currency_code }
      let(:response_field) { attribute }
      let(:response_value) { "USD" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#recurring_charges' do
      let(:attribute) { :recurring_charges }
      let(:response_field) { attribute }
      let(:response_value) { "" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

    context '#offering_type' do
      let(:attribute) { :offering_type }
      let(:response_field) { attribute }
      let(:response_value) { "Light Utilization" }
      let(:translated_value) { response_value }
      it_should_behave_like "ec2 resource attribute accessor (describe call)"
    end

  end

end
