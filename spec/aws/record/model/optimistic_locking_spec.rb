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
        context 'optimistic locking' do

          before(:each) do
            klass.string_attr :name
            klass.optimistic_locking :version_id
          end

          context 'new records' do

            it 'sets optmistic attribute to 1 on create' do

              sdb_attributes.should_receive(:add).with(hash_including(
                'name' => 'foo', 'version_id' => '1'))

              klass.new(:name => 'foo').save

            end

            it 'ensures the optimstic locking attribute is null on create' do

              sdb_attributes.should_receive(:add).with(hash_including(
                :unless_exists => 'version_id'))

              klass.new(:name => 'foo').save

            end

          end

          context 'existing records' do

            before(:each) do
              sdb_data.stub(:attributes).and_return({
                'name' => %w(name1),
                'version_id' => %w(1),
              })
            end

            it 'incrementes the optmistic attribute on update' do

              sdb_attributes.should_receive(:replace).
                with(hash_including('name' => 'name2', 'version_id' => '2'))

              obj = klass['item-id']
              obj.name = 'name2'
              obj.save!

            end

            it 'sets expectation about the opt locking attr on update' do

              sdb_attributes.should_receive(:replace).
                with(hash_including(:if => { 'version_id' => '1' }))

              obj = klass['item-id']
              obj.name = 'name2'
              obj.save!

            end

            it 'sets expectations about the opt locking attr on delete' do

              sdb_item.should_receive(:delete).
                with(:if => { 'version_id' => '1' })

              obj = klass['item-id']
              obj.delete

            end

            # simulate enabling optimistic locking after records have been
            # already added to the system
            context 'missing previous version id' do

              before(:each) do
                sdb_data.stub(:attributes).and_return({'name' => %w(name1)})
              end

              it 'sets expectation about the opt locking attr to be nil' do

                sdb_attributes.should_receive(:replace).
                  with(hash_including(:unless_exists => 'version_id'))

                obj = klass['item-id']
                obj.name = 'name2'
                obj.save!

              end

              it 'sets expectations about the opt locking attr on delete' do

                sdb_item.should_receive(:delete).with(:unless_exists => 'version_id')

                obj = klass['item-id']
                obj.delete

              end

            end

          end
        end
      end
    end
  end
end
