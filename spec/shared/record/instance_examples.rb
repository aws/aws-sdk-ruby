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

  shared_examples_for "aws record instance" do

    let(:klass) { Class.new(described_class) }

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

    end

    context '#id' do

      it 'defaults to nil for new records' do
        klass.new.id.should be_nil
      end

    end

    context '#attributes' do

      it 'returns a hash of attribute names and values' do
        klass.string_attr :foo
        klass.string_attr :bar
        obj = klass.new(:foo => 'abc', :bar => '123')
        obj.attributes['foo'].should eq('abc')
        obj.attributes['bar'].should eq('123')
      end

      it 'populates default attributes' do
        klass.string_attr :foo, :default_value => 'default'
        obj = klass.new
        obj.attributes['foo'].should eq('default')
      end

      it 'populates default with blocks' do
        defaults = [1,2]
        klass.integer_attr :size, :default_value => lambda { defaults.shift }
        klass.new.size.should eq(1)
        klass.new.size.should eq(2)
      end

      it 'it uses value override methods' do
        klass = Class.new(Record::Base) do
          string_attr :foo
          def foo
            self['foo'] ? self['foo'] * 2 : nil
          end
        end
        obj = klass.new(:foo => 'bar')
        obj.attributes['foo'].should eq('barbar')
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
        }.should raise_error(Record::UndefinedAttributeError)
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
        }.should raise_error(Record::UndefinedAttributeError, /fake/)
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
        obj.stub(:delete_storage)
        obj.delete
        obj.deleted?.should == true
      end

    end

    context '#delete' do

      it 'calls delete_storage' do
        obj = klass.new
        obj.stub(:persisted?).and_return(true)
        obj.should_receive(:delete_storage)
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

      context 'after save' do

        let(:obj) { klass.new }

        before(:each) do
          obj.stub(:update)
          obj.stub(:create_storage)
          obj.save
        end

        it 'has an id' do
          h = "[0-9a-f]"
          uuid_regex = /#{h}{8}-#{h}{4}-#{h}{4}-#{h}{4}-#{h}{12}/
          obj.id.should match(uuid_regex)
        end

        it 'should be persisted' do
          obj.persisted?.should == true
        end

      end

    end

  end

end
