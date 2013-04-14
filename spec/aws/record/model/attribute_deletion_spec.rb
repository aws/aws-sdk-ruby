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

        context 'blanking out attributes on existing records' do

          before(:each) do

            klass.string_attr :name
            klass.string_attr :alias

            sdb_data.stub(:attributes).and_return({
              'name' => ['John'],
              'alias' => ['johndoe'],
            })

          end

          it 'marks attributes for deletion during save' do

            sdb_attributes.should_receive(:replace).
              with('_delete_' => ['alias'])

            obj = klass['item-id']
            obj.alias = nil
            obj.save

          end

          it 'marks attributes for deletion next to regular updates' do

            sdb_attributes.should_receive(:replace).
              with('name' => 'newname', '_delete_' => ['alias'])

            obj = klass['item-id']
            obj.name = 'newname'
            obj.alias = nil
            obj.save

          end

          it 'follows the update up with a delete to remove deletion markers' do

            sdb_attributes.should_receive(:replace).
              with('name' => 'newname', '_delete_' => %w(alias)).
              ordered

            sdb_attributes.should_receive(:delete).
              with(%w(alias _delete_)).
              ordered

            obj = klass['item-id']
            obj.name = 'newname'
            obj.alias = nil
            obj.save

          end

          it 'treates attributes marked for deletion as blank' do

            sdb_data.stub(:attributes).and_return({
              'name' => %w(John),
              'alias' => %w(johndoe),
              '_delete_' => %(alias),
            })

            obj = klass['item-id']
            obj.name.should == 'John'
            obj.alias.should == nil

          end

        end

      end
    end
  end
end
