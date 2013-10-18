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

      context 'validates_numericality_of' do

        it_behaves_like("validation", {}) do

          let(:validation_macro) { :validates_numericality_of }

          let(:invalid_value) { 'abc' }

          it 'adds sensible default message' do
            klass.string_attr :age
            klass.validates_numericality_of :age
            obj.age = 'abc'
            obj.valid?
            obj.errors[:age].should == ['is not a number']
          end

          context 'float_attr' do

            it 'accepts valid floats' do
              klass.float_attr :score
              klass.validates_numericality_of :score
              obj.score = 12.34
              obj.valid?.should == true
            end

            it 'accepts valid float strings' do
              klass.float_attr :score
              klass.validates_numericality_of :score
              obj.score = '12.34'
              obj.valid?.should == true
            end

            it 'validates the value before type cast' do
              klass.float_attr :score
              klass.validates_numericality_of :score
              obj.score = 'abc'
              obj.score.should == 0.0
              obj.score_before_type_cast.should == 'abc' # therefore invalid
              obj.valid?.should == false
            end

          end

          context 'integer_attr' do

            it 'accepts valid integers' do
              klass.integer_attr :age
              klass.validates_numericality_of :age
              obj.age = 40
              obj.valid?.should == true
            end

            it 'accepts integer strings' do
              klass.integer_attr :age
              klass.validates_numericality_of :age
              obj.age = '40'
              obj.valid?.should == true
            end

            it 'validates the value before type cast' do
              klass.integer_attr :age
              klass.validates_numericality_of :age
              obj.age = 'abc'
              obj.age.should == 0
              obj.age_before_type_cast.should == 'abc' # therefore invalid
              obj.valid?.should == false
            end

          end

          context 'string_attr' do

            it 'validates the numeric representation of the string' do
              klass.string_attr :age
              klass.validates_numericality_of :age
              obj.age = '40'
              obj.valid?.should == true
            end

            it 'rejects strings that do not convert cleanly' do
              klass.string_attr :age
              klass.validates_numericality_of :age
              obj.age = '40abc'
              obj.valid?.should == false
            end

          end

          context ':only_integer' do

            it 'may be set to false' do
              klass.string_attr :score
              klass.validates_numericality_of :score, :only_integer => false
              obj.score = '40.5'
              obj.valid?.should == true
            end

            it 'rejects floats' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :only_integer => true
              obj.age = '40.5'
              obj.valid?.should == false
            end

            it 'adds an appropriate error message' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :only_integer => true
              obj.age = '40.5'
              obj.valid?
              obj.errors[:age].should == ['must be an integer']
            end

          end

          context ':equal_to' do

            it 'may not be used with :greater_than' do
              lambda {
                klass.validates_numericality_of :foo,
                  :equal_to => 10,
                  :greater_than => 5
              }.should raise_error(ArgumentError)
            end

            it 'may not be used with :greater_than_or_equal_to' do
              lambda {
                klass.validates_numericality_of :foo,
                  :equal_to => 10,
                  :greater_than_or_equal_to => 5
              }.should raise_error(ArgumentError)
            end

            it 'may not be used with :less_than' do
              lambda {
                klass.validates_numericality_of :foo,
                  :equal_to => 10,
                  :less_than => 5
              }.should raise_error(ArgumentError)
            end

            it 'may not be used with :less_than_or_equal_to' do
              lambda {
                klass.validates_numericality_of :foo,
                  :equal_to => 10,
                  :less_than_or_equal_to => 5
              }.should raise_error(ArgumentError)
            end

            it 'accepts values that are equal' do
              klass.integer_attr :age
              klass.validates_numericality_of :age, :equal_to => 40
              obj.age = 40
              obj.valid?.should == true
            end

            it 'rejects values that are not equal' do
              klass.integer_attr :age
              klass.validates_numericality_of :age, :equal_to => 40
              obj.age = 41
              obj.valid?.should == false
            end

            it 'adds an appropriate error message' do
              klass.integer_attr :age
              klass.validates_numericality_of :age, :equal_to => 40
              obj.age = 41
              obj.valid?
              obj.errors[:age].should == ['should equal 40']
            end

            it 'can accept integers' do
              lambda {
                klass.validates_numericality_of :age, :equal_to => 1
              }.should_not raise_error
            end

            it 'can accept floats' do
              lambda {
                klass.validates_numericality_of :age, :equal_to => 1.1
              }.should_not raise_error
            end

            it 'can accepts values based on method return value' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of :age, :equal_to => :shoe_size
              obj.shoe_size = 10
              obj.age = 10
              obj.valid?.should == true
            end

            it 'can reject values based on method return value' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of :age, :equal_to => :shoe_size
              obj.shoe_size = 10
              obj.age = 20
              obj.valid?.should == false
            end

            it 'uses method return value for error message' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of :age, :equal_to => :shoe_size
              obj.shoe_size = 10
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['should equal 10']
            end

            it 'can accept values based on block return value' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of :age,
                :equal_to => lambda{|record| record.shoe_size }
              obj.shoe_size = 10
              obj.age = 10
              obj.valid?.should == true
            end

            it 'can reject values based on block return value' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of :age,
                :equal_to => lambda{|record| record.shoe_size }
              obj.shoe_size = 10
              obj.age = 20
              obj.valid?.should == false
            end

            it 'uses block return value for error message' do
              klass.integer_attr :age
              klass.integer_attr :shoe_size
              klass.validates_numericality_of(:age,
                :equal_to => lambda{|record| record.shoe_size })
              obj.shoe_size = 10
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['should equal 10']
            end

          end

          context ':greater_than' do

            it 'accepts integers' do
              lambda {
                klass.validates_numericality_of :age, :greater_than => 18
              }.should_not raise_error
            end

            it 'accepts floats' do
              lambda {
                klass.validates_numericality_of :age, :greater_than => 18.5
              }.should_not raise_error
            end

            it 'accepts symbols' do
              lambda {
                klass.validates_numericality_of :age,
                  :greater_than => :shoe_size
              }.should_not raise_error
            end

            it 'accepts procs' do
              lambda {
                klass.validates_numericality_of :age,
                  :greater_than => lambda{|record| record.shoe_size }
              }.should_not raise_error
            end

            it 'accepts values that are greater' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than => 18
              obj.age = 20
              obj.valid?.should == true
            end

            it 'rejects values that are not greater' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than => 18
              obj.age = 16
              obj.valid?.should == false
            end

            it 'adds a sensible error message' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than => 18
              obj.age = 16
              obj.valid?
              obj.errors[:age].should == ['must be greater than 18']
            end

            it 'accepts custom error messages' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than => 18,
                :message => 'indicates you are too young'
              obj.age = 16
              obj.valid?
              obj.errors[:age].should == ['indicates you are too young']
            end

          end

          context ':greater_than_or_equal_to' do

            it 'accepts integers' do
              lambda {
                klass.validates_numericality_of :age, :greater_than_or_equal_to => 18
              }.should_not raise_error
            end

            it 'accepts floats' do
              lambda {
                klass.validates_numericality_of :age, :greater_than_or_equal_to => 18.5
              }.should_not raise_error
            end

            it 'accepts symbols' do
              lambda {
                klass.validates_numericality_of :age,
                  :greater_than_or_equal_to => :shoe_size
              }.should_not raise_error
            end

            it 'accepts procs' do
              lambda {
                klass.validates_numericality_of :age,
                  :greater_than_or_equal_to => lambda{|record| record.shoe_size }
              }.should_not raise_error
            end

            it 'accepts values that are equal' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than_or_equal_to => 18
              obj.age = 18
              obj.valid?.should == true
            end

            it 'accepts values that are greater' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than_or_equal_to => 18
              obj.age = 20
              obj.valid?.should == true
            end

            it 'rejects values that are not greater' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than_or_equal_to => 18
              obj.age = 16
              obj.valid?.should == false
            end

            it 'adds a sensible error message' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than_or_equal_to => 18
              obj.age = 16
              obj.valid?
              obj.errors[:age].should == ['must be greater than or equal to 18']
            end

            it 'accepts custom error messages' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than_or_equal_to => 18,
                :message => 'indicates you are too young'
              obj.age = 16
              obj.valid?
              obj.errors[:age].should == ['indicates you are too young']
            end

          end

          context ':less_than' do

            it 'accepts integers' do
              lambda {
                klass.validates_numericality_of :age, :less_than => 18
              }.should_not raise_error
            end

            it 'accepts floats' do
              lambda {
                klass.validates_numericality_of :age, :less_than => 18.5
              }.should_not raise_error
            end

            it 'accepts symbols' do
              lambda {
                klass.validates_numericality_of :age,
                  :less_than => :shoe_size
              }.should_not raise_error
            end

            it 'accepts procs' do
              lambda {
                klass.validates_numericality_of :age,
                  :less_than => lambda{|record| record.shoe_size }
              }.should_not raise_error
            end

            it 'accepts values that are less' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than => 18
              obj.age = 16
              obj.valid?.should == true
            end

            it 'rejects values that are not less' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than => 18
              obj.age = 20
              obj.valid?.should == false
            end

            it 'adds a sensible error message' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than => 18
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['must be less than 18']
            end

            it 'accepts custom error messages' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than => 18,
                :message => 'indicates you are too old'
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['indicates you are too old']
            end

          end

          context ':less_than_or_equal_to' do

            it 'accepts integers' do
              lambda {
                klass.validates_numericality_of :age, :less_than_or_equal_to => 18
              }.should_not raise_error
            end

            it 'accepts floats' do
              lambda {
                klass.validates_numericality_of :age, :less_than_or_equal_to => 18.5
              }.should_not raise_error
            end

            it 'accepts symbols' do
              lambda {
                klass.validates_numericality_of :age,
                  :less_than_or_equal_to => :shoe_size
              }.should_not raise_error
            end

            it 'accepts procs' do
              lambda {
                klass.validates_numericality_of :age,
                  :less_than_or_equal_to => lambda{|record| record.shoe_size }
              }.should_not raise_error
            end

            it 'accepts values that are equal' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than_or_equal_to => 18
              obj.age = 18
              obj.valid?.should == true
            end

            it 'accepts values that are less' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than_or_equal_to => 18
              obj.age = 16
              obj.valid?.should == true
            end

            it 'rejects values that are not less' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than_or_equal_to => 18
              obj.age = 20
              obj.valid?.should == false
            end

            it 'adds a sensible error message' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than_or_equal_to => 18
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['must be less than or equal to 18']
            end

            it 'accepts custom error messages' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :less_than_or_equal_to => 18,
                :message => 'indicates you are too old'
              obj.age = 20
              obj.valid?
              obj.errors[:age].should == ['indicates you are too old']
            end

          end

          context ':odd' do

            it 'forces integer only' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :odd => true
              obj.age = '1.1'
              obj.valid?.should == false
              obj.errors[:age].should == ['must be an integer']
            end

            it 'accepts odd numbers' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :odd => true
              obj.age = 1
              obj.valid?.should == true
            end

            it 'rejects even numbers' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :odd => true
              obj.age = 2
              obj.valid?.should == false
            end

            it 'does not accept false' do
              lambda {
                klass.validates_numericality_of :age, :odd => false
              }.should raise_error(ArgumentError)
            end

            it 'may not be used with :even' do
              lambda {
                klass.validates_numericality_of :age, :odd => true, :even => true
              }.should raise_error(ArgumentError)
            end

            it 'adds an appropriate error message' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :odd => true
              obj.age = 2
              obj.valid?
              obj.errors[:age].should == ['must be an odd number']
            end

          end

          context ':even' do

            it 'forces integer only' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :even => true
              obj.age = '1.1'
              obj.valid?.should == false
              obj.errors[:age].should == ['must be an integer']
            end

            it 'accepts even numbers' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :even => true
              obj.age = 2
              obj.valid?.should == true
            end

            it 'rejects odd numbers' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :even => true
              obj.age = 1
              obj.valid?.should == false
            end

            it 'does not accept false' do
              lambda {
                klass.validates_numericality_of :age, :even => false
              }.should raise_error(ArgumentError)
            end

            it 'adds an appropriate error message' do
              klass.string_attr :age
              klass.validates_numericality_of :age, :even => true
              obj.age = 3
              obj.valid?
              obj.errors[:age].should == ['must be an even number']
            end

          end

          context ':allow_nil' do

            it 'skips validation when true and the value is nil' do
              klass.send(:attr_accessor, :value)
              klass.validates_numericality_of :value, :allow_nil => true
              obj.valid?.should == true
            end

            it 'defaults to false' do
              klass.send(:attr_accessor, :value)
              klass.validates_numericality_of :value
              obj.valid?.should == false
            end

          end

          context ':allow_blank' do

            it 'skips validation when true and the value is blank' do
              klass.send(:attr_accessor, :value)
              klass.validates_numericality_of :value, :allow_blank => true
              obj.value = ""
              obj.valid?.should == true
            end

            it 'defaults to false' do
              klass.send(:attr_accessor, :value)
              klass.validates_numericality_of :value
              obj.value = ""
              obj.valid?.should == false
            end

          end

          context 'multiple errors' do

            it 'can add multiple error messages' do
              klass.integer_attr :age
              klass.validates_numericality_of :age,
                :greater_than => 16,
                :even => true
              obj.age = 15
              obj.valid?
              obj.errors[:age].sort.should ==
                ['must be greater than 16', 'must be an even number'].sort
            end

          end

          context 'multi-valued attributes' do

            it 'works with basic sets' do
              klass.string_attr :ranks
              klass.validates_numericality_of :ranks, :only_integer => true
              obj.ranks = %w(10 15)
              obj.valid?.should == true
            end

          end

        end
      end
    end
  end
end
