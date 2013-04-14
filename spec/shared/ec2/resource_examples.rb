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

  shared_examples_for "ec2 resource equality method" do |method|

    let(:instance) { described_class.new("foo-id") }

    context "##{method}" do

      context 'same class' do

        it 'should return true if the IDs match' do
          instance.send(method, described_class.new("foo-id")).
            should be_true
        end

        it 'should return false if the IDs do not match' do
          instance.send(method, described_class.new("bar-id")).
            should_not be_true
        end

      end

      context 'different class' do

        it 'should return false' do
          imposter_class = Class.new(DelegateClass(described_class)) do
            def id; "foo-id"; end
          end
          instance.send(method, imposter_class.new(instance)).
            should_not be_true
        end

      end

    end

  end

  shared_examples_for 'an ec2 resource object' do

    it_should_behave_like 'an ec2 model object', "foo-id" do

      context '#inspect' do

        it 'should include the ID' do
          instance.inspect.should =~ /<[^>]+:foo-id[:>]/
        end

      end

    end

    it_should_behave_like "ec2 resource equality method", :==

    it_should_behave_like "ec2 resource equality method", :eql?

  end

end
