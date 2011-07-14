# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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
      context 'optimistic locking' do
        
        let(:klass) do
          Class.new(Record::Base)
        end
  
        before(:each) do
          klass.stub(:to_s).and_return('ExampleModel')
        end
  
        let(:attr_collection) { double('attribute-collection').as_null_object }
  
        before(:each) do
          klass.string_attr :name
          klass.optimistic_locking :version_id
          klass.stub_chain(:sdb_domain, :items, :[], :attributes).
            and_return(attr_collection)
        end
  
        context 'new records' do
  
          it 'sets optmistic attribute to 1 on create' do
            attr_collection.should_receive(:add).
              with(hash_including('name' => %w(foo), 'version_id' => %w(1)))
            obj = klass.new(:name => 'foo')
            obj.save
          end
  
          it 'ensures the optimstic locking attribute is null on create' do
            attr_collection.should_receive(:add).
              with(hash_including(:unless => 'version_id'))
            obj = klass.new(:name => 'foo')
            obj.save
          end
  
        end
  
        context 'existing records' do
  
          let(:data) { double('item-data', :attributes => { 
            'name' => %w(name1),
            'version_id' => %w(1),
          })}
  
          let(:obj) { klass['item-name'] }
          
          before(:each) do
            klass.stub_chain(:sdb_domain, :items, :[], :data).and_return(data)
          end
  
          it 'incrementes the optmistic attribute on update' do
            attr_collection.should_receive(:replace).
              with(hash_including('name' => %w(name2), 'version_id' => %w(2)))
            obj.name = 'name2'
            obj.save!
          end
  
          it 'sets expectation about the opt locking attr on update' do
            attr_collection.should_receive(:replace).
              with(hash_including(:if => { 'version_id' => '1' }))
            obj.name = 'name2'
            obj.save!
          end
  
          it 'sets expectations about the opt locking attr on delete' do
            obj.send(:sdb_item).should_receive(:delete).
              with(:if => { 'version_id' => '1' })
            obj.delete
          end
  
          # simulate enabling optimistic locking after records have been
          # already added to the system
          context 'missing previous version id' do
            
            # note - no version id
            let(:data) { double('item-data', :attributes => { 
              'name' => %w(name1)
            })}
  
            it 'sets expectation about the opt locking attr to be nil' do
              attr_collection.should_receive(:replace).
                with(hash_including(:unless => 'version_id'))
              obj.name = 'name2'
              obj.save!
            end
  
            it 'sets expectations about the opt locking attr on delete' do
              obj.send(:sdb_item).should_receive(:delete).with(:unless => 'version_id')
              obj.delete
            end
  
          end
          
        end
  
      end
    end
  end
end
