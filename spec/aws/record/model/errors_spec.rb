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

      let(:klass) { Class.new(Record::Base) }

      context '#errors' do

        it 'returns an Errors object' do
          klass.new.errors.should be_an(Errors)
        end

        it 'always returns the same Errors object' do
          obj = klass.new
          errors1 = obj.errors
          errors2 = obj.errors
          errors1.should == errors2
        end

      end
    end

    describe Errors do

      let(:errors) { Record::Errors.new }

      it 'is enumerable' do
        errors.should be_an(Enumerable)
      end

      context '#add' do

        it 'adds an error message' do
          errors.add(:name, 'may not be blank')
          errors.count.should == 1
        end

        it 'allows you to add mulitple errors to a single attribute' do
          errors.add(:name, 'must be less than 100 characters')
          errors.add(:name, 'may only contains letters and spaces')
          errors.count.should == 2
        end

        it 'returns all of the errors messages for this attr' do
          errors.add(:name, 'msg1').should == ['msg1']
          errors.add(:name, 'msg2').should == ['msg1', 'msg2']
        end

        it 'defaults the message to "is invalid"' do
          errors.add(:name).should == ['is invalid']
        end

      end

      context '#add_to_base' do

        it 'add a message' do
          errors.add_to_base('msg1')
          errors.full_messages.should == ['msg1']
        end

      end

      context '#on' do

        it 'returns errors added to an attribute' do
          errors.add(:name, 'msg1')
          errors.add(:name, 'msg2')
          errors.on(:name).should == ['msg1', 'msg2']
        end

        it 'provides indifferent access to the errors' do
          errors.add(:name, 'msg1')
          errors.add('name', 'msg2')
          errors.on(:name).should == ['msg1', 'msg2']
          errors.on('name').should == ['msg1', 'msg2']
        end

      end

      context '#[]=' do

        it 'is the same as #add' do
          errors.methods(:[]=).should == errors.methods(:add)
        end

      end

      context '#[]' do

        it 'is the same as #on' do
          errors.methods(:[]).should == errors.methods(:on)
        end

      end

      context '#empty?' do

        it 'returns true when there are no errors' do
          errors.empty?.should == true
        end

        it 'returns false when there are errors' do
          errors.add(:name, 'may not be blank')
          errors.empty?.should == false
        end

      end

      context '#count' do

        it 'returns the number of errors' do
          errors.add(:base, 'This is not awesome')
          errors.add(:foo, 'is not bar')
          errors.add(:name, 'may not be blank')
          errors.add(:name, 'may only contain letters')
          errors.count.should == 4
        end

      end

      context '#full_messages' do

        it 'returns errors formatted like sentances' do

          errors.add(:base, 'This is not awesome')
          errors.add(:foo, 'is not bar')
          errors.add(:name, 'may not be blank')
          errors.add(:name, 'may only contain letters')

          errors.full_messages.length.should == 4
          [
            'This is not awesome',
            'Foo is not bar',
            'Name may not be blank',
            'Name may only contain letters',
          ].all? {|row| errors.full_messages.should include(row) }

        end

        it 'does some simple inflections to capitalize the attribute' do
          errors.add(:average_score, 'must be a number')
          errors.full_messages.should == ['Average score must be a number']
        end

      end

      context '#each' do

        it 'yields attributes and error messages' do

          errors.add(:base, 'This is not awesome')
          errors.add(:foo, 'is not bar')
          errors.add(:name, 'may not be blank')
          errors.add(:name, 'may only contain letters')

          yielded = []
          errors.each do |attr_name, error_message|
            yielded << [attr_name, error_message]
          end

          yielded.length.should == 4
          [
            ['base', 'This is not awesome'],
            ['foo', 'is not bar'],
            ['name', 'may not be blank'],
            ['name', 'may only contain letters'],
          ].all? {|row| yielded.should include(row) }

        end
      end

      context '#to_hash' do

        it 'returns errors hashed by their attribute names' do
          errors.add(:base, 'is not awesome')
          errors.add(:foo, 'is not bar')
          errors.add(:name, 'may not be blank')
          errors.add(:name, 'may only contain letters')
          errors.to_hash.should == {
            'base' => ['is not awesome'],
            'foo'  => ['is not bar'],
            'name' => ['may not be blank', 'may only contain letters'],
          }
        end

      end

      context '#clear!' do

        it 'removes all error messges' do
          errors.add(:name, 'may not be blank')
          errors.count.should == 1
          errors.clear!
          errors.count.should == 0
          errors.full_messages.should == []
        end

      end

    end

  end
end
