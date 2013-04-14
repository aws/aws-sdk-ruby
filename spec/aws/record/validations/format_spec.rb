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
  module Record
    describe Base do

      context 'validates_format_of' do

        it_behaves_like("validation", {}) do

          let(:validation_macro) { :validates_format_of }

          let(:opts) { { :with => /^xyz$/ } }

          let(:invalid_value) { 'abc' }

          it 'must receive :with or :without' do
            lambda {
              klass.validates_format_of :foo
            }.should raise_error(ArgumentError)
          end

          context ':with' do

            it 'validates the value as a string against the regex' do
              value = double('value')
              value.should_receive(:to_s).and_return('abc')
              klass.send(:attr_accessor, :value)
              klass.validates_format_of :value, :with => /^abc$/
              obj.value = value
              obj.valid?.should == true
            end

            it 'accepts values that match' do
              klass.string_attr :value
              klass.validates_format_of :value, :with => /^abc$/
              obj.value = 'abc'
              obj.valid?.should == true
            end

            it 'rejects values that do not match' do
              klass.string_attr :value
              klass.validates_format_of :value, :with => /^abc$/
              obj.value = 'abcd'
              obj.valid?.should == false
            end

            it 'adds a senible error message' do
              klass.string_attr :value
              klass.validates_format_of :value, :with => /^abc$/
              obj.value = 'abcd'
              obj.valid?
              obj.errors[:value].should == ['is invalid']
            end

          end

          context ':without' do

            it 'validates the value as a string against the regex' do
              value = double('value')
              value.should_receive(:to_s).and_return('xyz')
              klass.send(:attr_accessor, :value)
              klass.validates_format_of :value, :without => /^abc$/
              obj.value = value
              obj.valid?.should == true
            end

            it 'rejects values that match' do
              klass.string_attr :value
              klass.validates_format_of :value, :without => /^abc$/
              obj.value = 'abc'
              obj.valid?.should == false
            end

            it 'accepts values that do not match' do
              klass.string_attr :value
              klass.validates_format_of :value, :without => /^abc$/
              obj.value = 'abcd'
              obj.valid?.should == true
            end

            it 'adds a senible error message' do
              klass.string_attr :value
              klass.validates_format_of :value, :without => /^abc$/
              obj.value = 'abc'
              obj.valid?
              obj.errors[:value].should == ['is invalid']
            end

          end

          context 'both options' do

            it 'accepts values that pass both regexes' do
              klass.string_attr :value
              klass.validates_format_of :value,
                :with => /^abc/,
                :without => /xyz$/
              obj.value = 'abcmno'
              obj.valid?.should == true
            end

            it 'rejects values that fail one' do
              klass.string_attr :value
              klass.validates_format_of :value,
                :with => /^abc/,
                :without => /xyz$/
              obj.value = 'abcxyz'
              obj.valid?.should == false
            end

            it 'only adds one error message' do
              klass.string_attr :value
              klass.validates_format_of :value,
                :with => /^abc/,
                :without => /xyz$/
              obj.value = 'abcxyz'
              obj.valid?
              obj.errors[:value].should == ['is invalid']
            end

          end

          context 'multi-valued attributes' do

            it 'validates all values' do
              klass.string_attr :tags, :set => true
              klass.validates_format_of :tags, :with => /abc/
              obj.tags = %w(abc1 xyz1 xyz2)
              obj.valid?.should == false
              obj.errors[:tags].length.should == 2
            end

          end

        end
      end
    end
  end
end
