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

      context 'validates_confirmation_of' do

        it_behaves_like("validation", :accepts_allow_nil => false, :accepts_allow_blank => false) do

          let(:validation_macro) { :validates_count_of }

          let(:opts) { { :minimum => 1 } }

          let(:message_opt) { :too_few }

          context 'single-valued attributes' do

            it 'counts nil as zero' do
              klass.send(:attr_accessor, :value)
              klass.validates_count_of :value, :exactly => 0
              obj.value.should == nil
              obj.valid?.should == true
              obj.value = 'abc'
              obj.valid?.should == false
            end

            it 'counts other objects as 1' do
              klass.send(:attr_accessor, :value)
              klass.validates_count_of :value, :exactly => 1
              obj.value = nil
              obj.valid?.should == false
              obj.value = 'abc'
              obj.valid?.should == true
            end

          end

          context 'options' do

            it 'gripes when you specify :message' do
              lambda {
                klass.validates_count_of :foo, :exactly => 1, :message => 'eek'
              }.should raise_error(ArgumentError)
            end

            it 'gripes when no count options are passed' do
              lambda {
                klass.validates_count_of :foo
              }.should raise_error(ArgumentError)
            end

            it 'only accepts ranges for :within' do
              lambda {
                klass.validates_count_of :foo, :within => 1
              }.should raise_error(ArgumentError)
            end

            it 'only accepts integers for :exactly' do
              lambda {
                klass.validates_count_of :foo, :exactly => 'a'
              }.should raise_error(ArgumentError)
            end

            it 'only accepts integers for :minimum' do
              lambda {
                klass.validates_count_of :foo, :minimum => 'a'
              }.should raise_error(ArgumentError)
            end

            it 'only accepts integers for :maximum' do
              lambda {
                klass.validates_count_of :foo, :maximum => 'a'
              }.should raise_error(ArgumentError)
            end

            it 'only accepts ranges for :within' do
            end

            it 'accepts :exactly with nothing else' do
              lambda {
                klass.validates_count_of :foo, :exactly => 1, :minimum => 1
              }.should raise_error(ArgumentError)
            end

            it 'rejects :exactly with other option' do
              lambda {
                klass.validates_count_of :foo, :exactly => 1, :minimum => 1
              }.should raise_error(ArgumentError)
            end

            it 'accepts :within with nothing else' do
              lambda {
                klass.validates_count_of :foo, :within => (1..2)
              }.should_not raise_error
            end

            it 'rejects :within with other option' do
              lambda {
                klass.validates_count_of :foo, :within => (1..2), :exactly => 1
              }.should raise_error(ArgumentError)
            end

            it 'accepts :minimum with :maximum' do
              lambda {
                klass.validates_count_of :foo, :minimum => 1, :maximum => 2
              }.should_not raise_error
            end

          end

          context ':exactly' do

            it 'counts singular nil values as zero' do
              klass.send(:attr_accessor, :foo)
              klass.validates_count_of :foo, :exactly => 1
              obj.valid?.should == false
            end

            it 'counts singular nil values as zero' do
              klass.send(:attr_accessor, :foo)
              klass.validates_count_of :foo, :exactly => 0
              obj.valid?.should == true
            end

            it 'counts strings as 1' do
              klass.send(:attr_accessor, :foo)
              klass.validates_count_of :foo, :exactly => 1
              obj.foo = 'abc'
              obj.valid?.should == true
            end

            it 'askes for #count from enumerables' do

              value = [1,2,3]
              value.should_receive(:count).and_return(3)

              klass.send(:attr_accessor, :foo)
              klass.validates_count_of :foo, :exactly => 3
              obj.foo = value
              obj.valid?.should == true

            end

            it 'accepts sets of the correct length' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :exactly => 3
              obj.tags = %w(a b c)
              obj.valid?.should == true
            end

            it 'rejects sets of incorrect length' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :exactly => 3
              obj.tags = %w(a b)
              obj.valid?.should == false
            end

          end

          context ':within' do

            it 'accepts values falling within the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :within => (1..5)
              obj.tags = %w(a b c)
              obj.valid?.should == true
            end

            it 'rejects values falling outside the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :within => (1..5)
              obj.tags = []
              obj.valid?.should == false
            end

          end

          context ':minimum' do

            it 'accepts values falling within the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :minimum => 2
              obj.tags = %w(a b c)
              obj.valid?
              obj.valid?.should == true
            end

            it 'rejects values falling outside the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :minimum => 2
              obj.tags = %w(a)
              obj.valid?.should == false
            end

          end

          context ':maximum' do

            it 'accepts values falling within the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :maximum => 2
              obj.tags = %w(a)
              obj.valid?.should == true
            end

            it 'rejects values falling outside the range' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :maximum => 2
              obj.tags = %w(a b c)
              obj.valid?.should == false
            end

          end

          context ':too_few' do

            it 'defaults to a sensible message' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :minimum => 2
              obj.tags = []
              obj.valid?
              obj.errors[:tags].should == ['has too few values (minimum is 2)']
            end

            it 'can be changed' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :minimum => 2,
                :too_few => 'needs at least %{minimum} got %{count}'
              obj.tags = []
              obj.valid?
              obj.errors[:tags].should == ['needs at least 2 got 0']
            end

            it 'works with ranges' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :within => (2..5),
                :too_few => 'needs at least %{minimum} got %{count}'
              obj.tags = []
              obj.valid?
              obj.errors[:tags].should == ['needs at least 2 got 0']
            end

          end

          context ':too_many' do

            it 'defaults to a sensible message' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :maximum => 2
              obj.tags = %w(a b c)
              obj.valid?
              obj.errors[:tags].should == ['has too many values (maximum is 2)']
            end

            it 'can be changed' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :maximum => 2,
                :too_many => 'needs at most %{maximum} got %{count}'
              obj.tags = %w(a b c)
              obj.valid?
              obj.errors[:tags].should == ['needs at most 2 got 3']
            end

            it 'works with ranges' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :within => (2..5),
                :too_many => 'needs at most %{maximum} got %{count}'
              obj.tags = %w(a b c d e f)
              obj.valid?
              obj.errors[:tags].should == ['needs at most 5 got 6']
            end

          end

          context ':wrong_number' do

            it 'defaults to a sensible message' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :exactly => 2
              obj.tags = %w(a b c)
              obj.valid?
              obj.errors[:tags].should == ['has the wrong number of values (should have 2)']
            end

            it 'can be changed' do
              klass.string_attr :tags, :set => true
              klass.validates_count_of :tags, :exactly => 2,
                :wrong_number => 'should have %{exactly} values got %{count}'
              obj.tags = %w(a b c)
              obj.valid?
              obj.errors[:tags].should == ['should have 2 values got 3']
            end

          end

        end
      end
    end
  end
end
