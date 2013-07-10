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

      it_behaves_like 'aws record instance'

      it_behaves_like 'aws record' do

        context 'instance object' do

          context '#new' do

            it 'returns a new record' do
              klass.new.persisted?.should == false
            end

            it 'should not be persisted' do
              klass.new.persisted?.should == false
            end

            it 'accepts a hash of values to assign' do
              klass.string_attr :foo
              klass.string_attr :bar
              obj = klass.new(:foo => 'abc', :bar => 'xyz')
              obj.foo.should == 'abc'
              obj.bar.should == 'xyz'
            end

            it 'raises an exception if one of the hash keys is not an attribute' do
              lambda {
                klass.new(:blah => 'abc')
              }.should raise_error(NoMethodError)
            end

            it 'accepts a :domain string' do
              klass.new(:domain => 'abc').domain.should == 'abc'
            end

            it 'accepts :domain object' do
              domain = SimpleDB::Domain.new('abc')
              klass.new(:domain => domain).domain.should == 'abc'
            end

          end

          context '#id' do

            it 'defaults to nil for new records' do
              klass.new.id.should be_nil
            end

          end

          context '#domain' do

            it 'defaults to the klass domain' do
              obj = klass.new
              obj.domain.should == klass.name
            end

            it 'can be set as a contructor arg' do
              obj = klass.new(:domain => 'abc')
              obj.domain.should == 'abc'
            end

            it 'can be set with a string key' do
              obj = klass.new('domain' => 'abc')
              obj.domain.should == 'abc'
            end

            it 'can be chained with the domain scope' do
              obj = klass.domain('xyz').new
              obj.domain.should == 'xyz'
            end

            it 'is read only' do
              obj = klass.new
              lambda { obj.domain = 'abc' }.should raise_error(NoMethodError)
            end

            it 'can not be set after construction' do
              obj = klass.new # domain is determined here
              lambda {
                obj.attributes = { :domain => 'abc' }
              }.should raise_error(NoMethodError, /domain=/)
            end

            it 'can not be updated' do
              klass.string_attr :foo
              obj = klass.new :foo => 'bar' # default domain
              obj.save
              lambda {
                obj.update_attributes :domain => 'abc'
              }.should raise_error(NoMethodError, /domain=/)
            end

          end

          context '#attributes=' do

            before(:each) do
              klass.string_attr :name
            end

            it 'accepts string keys' do
              obj = klass.new
              obj.should_receive(:name=).with('new name')
              obj.attributes = {'name' => 'new name'}
            end

            it 'accepts symbol keys' do
              obj = klass.new
              obj.should_receive(:name=).with('new name')
              obj.attributes = {:name => 'new name'}
            end

            it 'raises exception for non-existant attributes' do
              obj = klass.new
              lambda {
                obj.attributes = {:xyz => 'xyz'}
              }.should raise_error(NoMethodError)
            end

            it 'accepts multiple values' do
              obj = klass.new
              obj.should_receive(:foo=).with('bar')
              obj.should_receive(:abc=).with('xyz')
              obj.attributes = { :foo => 'bar', 'abc' => 'xyz' }
            end


          end

          context '#attributes' do

            it 'returns a hash of attribute names and values' do
              klass.string_attr :foo
              klass.integer_attr :bar
              obj = klass.new(:foo => 'abc', :bar => '123')
              obj.attributes['foo'].should eq('abc')
              obj.attributes['bar'].should eq(123)
            end

            it 'it uses value override methods' do
              klass = Class.new(Record::Base) do
                string_attr :foo
                def foo
                  self['foo'] ? self['foo'] * 2 : nil
                end
              end
              obj = klass.new(:foo => 'bar')
              obj.attributes[:foo].should eq('barbar')
            end

            it 'includes the id for saved records' do
              obj = item_with_attributes(:foo => 'bar')
              obj.attributes.should == { 'id' => 'item-id', 'foo' => 'bar' }
            end

            it 'returns set attributes as sets' do
              obj = item_with_attributes(:abc => [1, 2])
              obj.attributes.should ==
                { 'id' => 'item-id', 'abc' => Set.new([1, 2]) }
            end

            it 'returns a hash that provides indifferent access' do
              obj = klass.new
              obj.attributes.should be_an(Core::IndifferentHash)
            end

          end

          context 'setter methods' do

            it 'provides access to previous definition via super' do
              klass = Class.new(Record::Base) do
                string_attr :name
                def name= value
                  self['name'] = value.upcase
                end
              end
              obj = klass.new
              obj.name = 'abc'
              obj.name.should == 'ABC'
            end

          end

          context 'getter methods' do

            it 'provides access to previous definition via super' do
              klass = Class.new(Record::Base) do
                string_attr :name
                def name
                  self['name'] ? self['name'].upcase : nil
                end
              end
              obj = klass.new
              obj.name = 'abc'
              obj.name.should == 'ABC'
            end

          end

          context '#[]' do

            it 'is protected' do
              klass.string_attr :name
              obj = klass.new
              lambda {
                obj[:name]
              }.should raise_error(NoMethodError, /protected/)
            end

            it 'gets the typecasted value' do
              klass.string_attr :name
              obj = klass.new
              obj.name = 123
              obj.send(:[], 'name').should == '123'
            end

            it 'accepts symbol keys' do
              klass.string_attr :name
              obj = klass.new
              obj.name = 'abc'
              obj.send(:[], :name).should == 'abc'
            end

            it 'only accepts valid attribute names' do
              lambda {
                obj = klass.new
                obj.send(:[], :non_existent_attribute)
              }.should raise_error(UndefinedAttributeError)
            end

          end

          context '#[]=' do

            it 'is protected' do
              klass.string_attr :name
              obj = klass.new
              lambda {
                obj[:name] = 'abc'
              }.should raise_error(NoMethodError, /protected/)
            end

            it 'accepts string keys' do
              klass.string_attr :name
              obj = klass.new
              obj.send(:[]=, 'name', 'abc')
              obj.name.should == 'abc'
            end

            it 'accepts symbol keys' do
              klass.string_attr :name
              obj = klass.new
              obj.send(:[]=, :name, 'abc')
              obj.name.should == 'abc'
            end

            it 'only accepts defined attribute names' do
              lambda {
                obj = klass.new
                obj.send(:[]=, :fake, 'foo')
              }.should raise_error(UndefinedAttributeError, /fake/)
            end

          end

          context '#update_attributes' do

            before(:each) do
              klass.string_attr :name
            end

            it 'accepts string keys' do
              obj = klass.new
              obj.stub(:save)
              obj.should_receive(:name=).with('new name')
              obj.update_attributes('name' => 'new name')
            end

            it 'accepts symbol keys' do
              obj = klass.new
              obj.stub(:save)
              obj.should_receive(:name=).with('new name')
              obj.update_attributes(:name => 'new name')
            end

            it 'raises exception for non-existant attributes' do
              obj = klass.new
              lambda {
                obj.update_attributes(:xyz => 'xyz')
              }.should raise_error(NoMethodError)
            end

            it 'calls save after bulk updating attributes' do
              obj = klass.new
              obj.should_receive(:name=).with('new name')
              obj.should_receive(:save)
              obj.update_attributes(:name => 'new name')
            end

          end

          context '#deleted?' do

            it 'returns false for new objects' do
              obj = klass.new
              obj.deleted?.should == false
            end

            it 'returns true after the object has been deleted' do
              obj = klass.new
              obj.stub(:persisted?).and_return(true)
              obj.stub(:sdb_item).and_return(double('sdb-item').as_null_object)
              obj.delete
              obj.deleted?.should == true
            end

          end

          context '#delete' do

            it 'calls delete on the sdb_item for persisted objects' do
              sdb_item = double('sdb-item')
              sdb_item.should_receive(:delete)
              obj = klass.new
              obj.stub(:persisted?).and_return(true)
              obj.stub(:sdb_item).and_return(sdb_item)
              obj.delete
            end

            it 'raises an error for non persisted objects' do
              obj = klass.new
              obj.stub(:persisted?).and_return(false)
              lambda {
                obj.delete
              }.should raise_error(/has not been saved yet/)
            end

            it 'raises an error when called on already deleted objects' do
              obj = klass.new
              obj.stub(:persisted?).and_return(true)
              obj.stub(:deleted?).and_return(true)
              lambda {
                obj.delete
              }.should raise_error(/has already been deleted/)
            end

          end

          context '#save!' do

            it 'raises an exception when save returns false' do
              obj = klass.new
              obj.stub(:valid?).and_return(false)
              obj.stub_chain(:errors, :full_messages).and_return(['Foo is bad'])
              lambda {
                obj.save!
              }.should raise_error(Record::InvalidRecordError)
            end

          end

          context '#save' do

            it 'returns false unless valid' do
              obj = klass.new
              obj.stub(:valid?).and_return(false)
              obj.save.should == false
            end

            context 'new records' do

              it 'calls add' do
                sdb_attributes.should_receive(:add).with('foo' => 'abc')
                klass.string_attr :foo
                klass.new(:foo => 'abc').save
              end

              it 'passes default values' do
                sdb_attributes.should_receive(:add).with('count' => '10')
                klass.string_attr :count, :default_value => 10
                klass.new.save
              end

              it 'does not send empty values' do
                sdb_attributes.should_receive(:add).with('foo' => 'bar')
                klass.string_attr :foo
                klass.string_attr :blank
                klass.string_attr :empty, :set => true
                klass.string_attr :nil
                klass.new(:foo => 'bar', :blank => '', :empty => [], :nil => nil).save
              end

              it 'encodes integers as strings' do
                sdb_attributes.should_receive(:add).with('count' => '0')
                klass.integer_attr :count
                klass.new(:count => 0).save
              end

              it 'encodes datetimes as iso8601 string' do
                date = DateTime.now
                iso8601 = date.strftime('%Y-%m-%dT%H:%M:%S%Z')
                sdb_attributes.should_receive(:add).with('when' => iso8601)
                klass.datetime_attr :when
                klass.new(:when => date).save
              end

              it 'encodes integers as strings' do
                sdb_attributes.should_receive(:add).with('count' => '12345')
                klass.integer_attr :count
                klass.new(:count => 12345).save
              end

            end

            context 'existing records' do

              before(:each) do
                klass.string_attr :name
                klass.string_attr :nickname
                sdb_data.stub(:attributes => {
                  'name' => %w(John),
                  'nickname' => %w(Johnny) })
              end

              it 'calls set on the attributes that are updated' do

                sdb_attributes.should_receive(:replace).
                  with(hash_including('name' => 'new name'))

                obj = klass['item-id']
                obj.name = 'new name'
                obj.save

              end

              it 'should not attempt to delete if nothing was blanked out' do

                sdb_attributes.should_not_receive(:delete)

                obj = klass['item-id']
                obj.name = 'new name'
                obj.save

              end

            end

            context 'after save' do

              it 'has an id' do
                h = "[0-9a-f]"
                uuid_regex = /#{h}{8}-#{h}{4}-#{h}{4}-#{h}{4}-#{h}{12}/
                klass.timestamps
                obj = klass.new
                obj.save
                obj.id.should match(uuid_regex)
              end

              it 'should be persisted' do
                klass.timestamps
                obj = klass.new
                obj.save
                obj.persisted?.should == true
              end

            end

            context ':validate' do
              before(:each) do
                klass.string_attr :category
                @obj = klass.new(:category => "test")
              end
              it '=> false should skip validations and just save' do
                @obj.should_not_receive(:run_validations)
                @obj.should_receive(:create)
                @obj.save(:validate => false)
              end
              it '=> true should run validations not save' do
                @obj.should_receive(:run_validations)
                @obj.should_receive(:create)
                @obj.save(:validate => true)
              end
              it 'should default to running validataions' do
                @obj.should_receive(:run_validations)
                @obj.should_receive(:create)
                @obj.save()
              end
            end

          end
        end
      end
    end
  end
end
