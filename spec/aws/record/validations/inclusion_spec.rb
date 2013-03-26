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

      context 'validates_inclusion_of' do

        it_behaves_like("validation", {}) do

          let(:validation_macro) { :validates_inclusion_of }

          let(:opts) { { :in => %w(abc xyz) } }

          let(:invalid_value) { 'mno' }

          let(:default_message) { 'is not included in the list' }

          it 'requires :in option' do
            lambda {
              klass.validates_inclusion_of :foo
            }.should raise_error(ArgumentError)
          end

          it 'requires :in to be a range' do
            lambda {
              klass.validates_inclusion_of :foo, :in => 1
            }.should raise_error(ArgumentError)
          end

          it 'adds an error when the value is nil' do
            klass.string_attr :gender
            klass.validates_inclusion_of :gender, :in => %w(male female)
            obj.valid?.should == false
          end

          it 'adds an error when the value is not included in the set' do
            klass.string_attr :gender
            klass.validates_inclusion_of :gender, :in => %w(male female)
            obj.gender = 'androgynous'
            obj.valid?.should == false
          end

          it 'has a sensible default error message' do
            klass.string_attr :gender
            klass.validates_inclusion_of :gender, :in => %w(male female)
            obj.valid?
            obj.errors[:gender].should == [default_message]
          end

          context 'ranges' do

            it 'accepts values included in the range' do
              klass.integer_attr :age
              klass.validates_inclusion_of :age, :in => (0..99)
              obj.age = 10
              obj.valid?.should == true
            end

            it 'rejects values not included in the range' do
              klass.integer_attr :age
              klass.validates_inclusion_of :age, :in => (0..99)
              obj.age = -10
              obj.valid?.should == false
            end

          end

          context 'set attributes' do

            it 'accepts set attributes if all values are included' do
              klass.string_attr :tags, :set => true
              klass.validates_inclusion_of :tags, :in => %w(m n o p)
              obj = klass.new
              obj.tags = %w(m n o)
              obj.valid?
              obj.valid?.should == true
            end

            it 'rejects set attributes no values are included' do
              klass.string_attr :tags, :set => true
              klass.validates_inclusion_of :tags, :in => %w(a b c d)
              obj = klass.new
              obj.tags = %w(e f g)
              obj.valid?.should == false
            end

            it 'rejects set attributes if some values are not included' do
              klass.string_attr :tags, :set => true
              klass.validates_inclusion_of :tags, :in => %w(a b c d)
              obj = klass.new
              obj.tags = %w(b c d e)
              obj.valid?.should == false
            end

            it 'adds one error message per invalid value' do
              klass.string_attr :tags, :set => true
              klass.validates_inclusion_of :tags, :in => %w(a b c d)
              obj = klass.new
              obj.tags = %w(e f)
              obj.valid?
              obj.errors[:tags].should == [default_message, default_message]
            end

          end

          context 'multi-valued attributes' do

            it 'validates all values' do
              klass.string_attr :tags, :set => true
              klass.validates_inclusion_of :tags, :in => %w(abc xyz)
              obj.tags = %w(abc xyz mno pqr)
              obj.valid?.should == false
              obj.errors[:tags].length.should == 2
            end

          end

        end

      end

    end
  end
end
