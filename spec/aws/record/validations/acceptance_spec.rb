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

      context 'validates_acceptance_of' do

        it_behaves_like("validation", {}) do

          let(:invalid_value) { false }

          let(:validation_macro) { :validates_acceptance_of }

          context 'attribute accessors' do

            it 'adds a setter when one does not exist' do
              obj = klass.new
              obj.should_not respond_to(:eula=)
              klass.validates_acceptance_of :eula
              obj.should respond_to(:eula=)
            end

            it 'adds a getter when one does not exist' do
              obj = klass.new
              obj.should_not respond_to(:eula)
              klass.validates_acceptance_of :eula
              obj.should respond_to(:eula)
            end

            it 'does not replace attribute setter when one already exists' do
              klass.boolean_attr :value
              setter = obj.method(:value=)
              klass.validates_acceptance_of :value
              obj.method(:value=).should == setter
            end

            it 'does not replace attribute getter when one already exists' do
              klass.boolean_attr :value
              getter = obj.method(:value)
              klass.validates_acceptance_of :value
              obj.method(:value).should == getter
            end

          end

          context ':allow_nil' do

            it 'defaults to true' do
              klass.validates_acceptance_of :confirmation
              obj = klass.new
              obj.confirmation.should == nil
              obj.valid?.should == true
            end

          end

          context ':allow_blank' do

            it 'defaults to false' do
              klass.string_attr :confirmation
              klass.validates_acceptance_of :confirmation
              obj = klass.new :confirmation => " "
              obj.confirmation.should == " "
              obj.valid?.should == false
            end

            it 'skips the validation when set to true and the value is blank' do
              klass.string_attr :confirmation
              klass.validates_acceptance_of :confirmation, :allow_blank => true
              obj = klass.new :confirmation => " "
              obj.confirmation.should == " "
              obj.valid?.should == true
            end

          end

          context ':accept' do

            it 'specifies an additional value that is valid' do
              klass.validates_acceptance_of :confirmation, :accept => 'yes'
              obj = klass.new
              obj.confirmation = 'yes'
              obj.valid?.should == true
            end

          end

          context ':message' do

            it 'defaults to "must be accepted"' do
              klass.validates_acceptance_of :value
              obj.value = false
              obj.valid?
              obj.errors[:value].should == ['must be accepted']
            end

          end

          it 'adds an error when the value is nil' do
            klass.validates_acceptance_of :value
            obj.value = false
            obj.valid?
            obj.errors[:value].should == ['must be accepted']
          end

          it 'adds an error when the value is an empty string' do
            klass.string_attr :name
            klass.validates_presence_of :name
            obj.name = ''
            obj.valid?
            obj.errors[:name].should == ['may not be blank']
          end

          it 'adds an error when the value is an empty set' do
            klass.string_attr :tags, :set => true
            klass.validates_presence_of :tags
            obj.tags = []
            obj.valid?
            obj.errors[:tags].should == ['may not be blank']
          end

          it 'defaults the message to "may not be blank"' do
            klass.string_attr :name
            klass.validates_presence_of :name
            obj.valid?
            obj.errors[:name].should == ['may not be blank']
          end

        end

      end

    end
  end
end
