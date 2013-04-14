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

      context 'validates_length_of' do

        it_behaves_like("validation", {}) do

          let(:validation_macro) { :validates_length_of }

          let(:opts) { { :minimum => 2 } }

          let(:message_opt) { :too_short }

          it 'calls length on the value if it responds to length' do

            value = double('value')
            value.should_receive(:respond_to?).with(:length).and_return(true)
            value.stub(:length).and_return(3)

            klass.send(:attr_accessor, :value)
            klass.validates_length_of :value, :exactly => 3
            obj.value = value
            obj.valid?.should == true

          end

          it 'stringifies values that do not respond to length' do

            value = double('value')
            value.should_receive(:respond_to?).with(:length).and_return(false)
            value.should_receive(:to_s).and_return('abc')

            klass.send(:attr_accessor, :value)
            klass.validates_length_of :value, :exactly => 3
            obj.value = value
            obj.valid?.should == true

          end

          it 'counts nil as zero' do
            klass.send(:attr_accessor, :value)
            klass.validates_length_of :value, :exactly => 0
            obj.value.should == nil
            obj.valid?.should == true
          end

          context ':exactly' do

            it 'accepts values whos length matches' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :exactly => 3
              obj.value = 'abc'
              obj.valid?.should == true
            end

            it 'rejects values whos length does not match' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :exactly => 3
              obj.value = 'ab'
              obj.valid?.should == false
            end

            it 'adds an error message when the length does not match' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :exactly => 3
              obj.value = 'ab'
              obj.valid?
              obj.errors[:value].should ==
                ['is the wrong length (should be 3 characters)']
            end

            it 'raises an error when :exactly is not an integer' do
              lambda {
                klass.validates_length_of :value, :exactly => 'abc'
              }.should raise_error(ArgumentError)
            end

          end

          context ':within' do

            it 'accepts value within the range' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :within => 2..4
              obj.value = 'abc'
              obj.valid?.should == true
            end

            it 'rejects values outside the range' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :within => 2..4
              obj.value = 'a'
              obj.valid?.should == false
            end

            it 'adds an error message when the length is too short' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :within => 2..4
              obj.value = 'a'
              obj.valid?
              obj.errors[:value].should ==
                ['is too short (minimum is 2 characters)']
            end

            it 'adds an error message when the length is too long' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :within => 2..4
              obj.value = 'abcde'
              obj.valid?
              obj.errors[:value].should ==
                ['is too long (maximum is 4 characters)']
            end

            it 'raises an error when :within is not a range' do
              lambda {
                klass.validates_length_of :value, :within => 4
              }.should raise_error(ArgumentError)
            end

          end

          context ':minimum' do

            it 'accepts values longer than the min' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :minimum => 2
              obj.value = 'abc'
              obj.valid?.should == true
            end

            it 'accepts values same length as the min' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :minimum => 2
              obj.value = 'ab'
              obj.valid?.should == true
            end

            it 'rejects values shorter than the min' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :minimum => 2
              obj.value = 'a'
              obj.valid?.should == false
            end

            it 'adds an error message when the length is too short' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :minimum => 2
              obj.value = 'a'
              obj.valid?
              obj.errors[:value].should ==
                ['is too short (minimum is 2 characters)']
            end

            it 'raises an error when :minimum is not an integer' do
              lambda {
                klass.validates_length_of :value, :minimum => 'abc'
              }.should raise_error(ArgumentError)
            end

          end

          context ':maximum' do

            it 'accepts values shorter than the max' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :maximum => 3
              obj.value = 'ab'
              obj.valid?.should == true
            end

            it 'accepts values same length as the max' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :maximum => 3
              obj.value = 'abc'
              obj.valid?.should == true
            end

            it 'rejects values longer than the max' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :maximum => 3
              obj.value = 'abcd'
              obj.valid?.should == false
            end

            it 'adds an error message when the length is too long' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :maximum => 3
              obj.value = 'abcd'
              obj.valid?
              obj.errors[:value].should ==
                ['is too long (maximum is 3 characters)']
            end

            it 'raises an error when :maximum is not an integer' do
              lambda {
                klass.validates_length_of :value, :maximum => 'abc'
              }.should raise_error(ArgumentError)
            end

          end

          context ':too_long' do

            it 'can change the message' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :maximum => 2,
                :too_long => 'is too long, max is %{maximum}, got %{length}'
              obj.value = 'abc'
              obj.valid?
              obj.errors[:value].should == ['is too long, max is 2, got 3']
            end

          end

          context ':too_short' do

            it 'can change the message' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :minimum => 2,
                :too_short => 'is too short, min is %{minimum}, got %{length}'
              obj.value = 'a'
              obj.valid?
              obj.errors[:value].should == ['is too short, min is 2, got 1']
            end

          end

          context ':wrong_length' do

            it 'can change the message' do
              klass.send(:attr_accessor, :value)
              klass.validates_length_of :value, :exactly => 2,
                :wrong_length => 'should be %{exactly}, got %{length}'
              obj.value = 'a'
              obj.valid?
              obj.errors[:value].should == ['should be 2, got 1']
            end

          end

          context 'multi-valued attributes' do

            it 'validates all values' do
              klass.string_attr :tags, :set => true
              klass.validates_length_of :tags, :maximum => 5
              obj.tags = %w(abc abc123 abc1234)
              obj.valid?.should == false
              obj.errors[:tags].length.should == 2
            end

          end

        end
      end
    end
  end
end
