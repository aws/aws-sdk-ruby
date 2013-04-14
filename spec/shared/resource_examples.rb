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

  shared_examples_for "resource equality method" do |method|

    let(:instance) { described_class.new(*constructor_args) }

    context "##{method}" do

      context 'same class' do

        it 'should return true if everything matches' do
          instance.send(method, described_class.new(*constructor_args)).
            should be_true
        end

        it 'should return false if any identifying information does not match' do
          comparison_instances.each do |other|
            instance.send(method, other).should_not be_true
          end
        end

      end

      context 'different class' do

        it 'should return false' do
          imposter_class = Class.new(DelegateClass(described_class))
          instance.send(method, imposter_class.new(instance)).
            should_not be_true
        end

      end

    end

  end

  shared_examples_for 'a resource object' do

    let(:identifiers) { raise NotImplementedError }

    let(:comparison_instances) { raise NotImplementedError }

    let(:instance) { described_class.new(*constructor_args) }

    context '#inspect' do

      it 'should include the ID' do
        identifiers.each { |id| instance.inspect.should include(id) }
      end

    end

    it_should_behave_like "resource equality method", :==

    it_should_behave_like "resource equality method", :eql?

  end

end
