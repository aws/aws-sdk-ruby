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
      it_behaves_like 'aws record' do

        context 'empty records' do

          before(:each) do
            klass.string_attr :name
            klass.string_attr :alias
            sdb_data.stub(:attributes).and_return({
              'name' => ['John'],
              'alias' => ['johndoe'],
            })
          end

          context 'new record' do

            it 'raises an error when trying to create an empty record' do
              obj = klass.new
              lambda { obj.save }.should raise_error(EmptyRecordError)
            end

            it 'does not consider a record with timestamps empty' do
              klass.timestamps
              obj = klass.new
              lambda { obj.save }.should_not raise_error
            end

            it 'does not consider a record with optimstic locking empty' do
              klass.optimistic_locking
              obj = klass.new
              lambda { obj.save }.should_not raise_error
            end

          end

          context 'existing record' do

            it 'does not raise an error for unmodified records' do
              obj = klass['item-id']
              lambda { obj.save }.should_not raise_error
            end

            it 'raises an error if all object attributes are blanked out' do
              obj = klass['item-id']
              obj.name = nil
              obj.alias = nil
              lambda { obj.save }.should raise_error(EmptyRecordError)
            end

            it 'raises an error if if not all attributes had to change' do

              sdb_data.stub(:attributes).and_return({
                'name' => ['John'],
                'alias' => [], # start this out already blank
              })

              obj = klass['item-id']
              obj.name = nil
              lambda { obj.save }.should raise_error(EmptyRecordError)

            end

          end

        end

      end
    end
  end
end
