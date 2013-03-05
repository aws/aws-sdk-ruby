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

  shared_examples_for("attribute macro") do |allows_set|

    let(:obj) { klass.new }

    let(:opts) { {} }

    before(:each) do
      klass.send(macro, :value, opts)
    end

    it 'adds a setter method' do
      obj.should respond_to("value=")
    end

    it 'adds a getter method' do
      obj.should respond_to('value')
    end

    it 'defaults value to nil' do
      obj.value.should be_nil
    end

    it 'defaults empty strings to nil' do
      obj.value = ''
      obj.value.should be_nil
    end

    it 'returns nil values unmodified for value attributes' do
      obj.value = nil
      obj.value.should be_nil
    end

    context 'before type cast' do

      it 'adds a getter method for the raw value' do
        obj.should respond_to(:value_before_type_cast)
      end

      it 'returns the raw value' do
        value = double('value', :to_s => '')
        obj.value = value
        obj.value_before_type_cast.should == value
      end

    end

    context 'with :default_value' do

      it 'causes the getter to return the default value' do
        klass.send(macro, :value2, opts.merge(:default_value => default_value))
        klass.new.value2.should == default_value
      end

    end

    if allows_set

      before(:each) do
        klass.send(macro, :multi_values, opts.merge(:set => true))
      end

      context 'with :set' do

        let(:values) {
          case macro
          when :string_attr           then Set.new(%w(abc xyz))
          when :integer_attr          then Set.new([1,2,3])
          when :sortable_integer_attr then Set.new([1,2,3])
          when :float_attr            then Set.new([1.2,3.4,5.6])
          when :sortable_float_attr   then Set.new([1.2,3.4,5.6])
          when :datetime_attr         then Set.new([DateTime.now, DateTime.new])
          else raise 'eek'
          end
        }

        it 'defaults to an empty set' do
          klass.new.multi_values.should == Set.new
        end

        it 'returns nil values as empty sets for set attributes' do
          obj.multi_values = nil
          obj.multi_values.should == Set.new
        end

        it 'defaults empty strings to an empty set' do
          obj.multi_values = ''
          obj.multi_values.should == Set.new
        end

        it 'accepts an returns proper values' do
          obj = klass.new(:multi_values => values)
          obj.multi_values.should == values
        end

        it 'accepts single values but returns it in a set' do
          obj = klass.new(:multi_values => values.first)
          obj.multi_values.should == Set.new([values.first])
        end

        it 'works with :default_value' do
          klass.send(macro, :multi_values, opts.merge(:set => true, :default_value => values))
          klass.new.multi_values.should == values
        end

        context 'before type cast' do

          it 'returns the value unmodified' do
            obj = klass.new
            obj.multi_values = values.first
            obj.multi_values_before_type_cast.should == values.first
          end

        end

      end

    end

  end

end
