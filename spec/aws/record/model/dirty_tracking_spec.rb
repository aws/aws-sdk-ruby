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
      context 'dirty tracking' do

        it_behaves_like 'aws record' do

          before(:each) do
            sdb_data.stub(:attributes => { 'name' => %w(foo) })
            klass.string_attr :name
          end

          context '#attribute_changed?' do

            it 'returns false on a newly created object' do

              # new object
              obj = klass.new
              obj.name_changed?.should == false

              # loaded objects
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name_changed?.should == false

            end

            it 'returns false for attributes populated with default values' do

              klass.string_attr :alias, :default_value => 'John Doe'

              obj = klass.new
              obj.alias.should == 'John Doe'
              obj.alias_changed?.should == false

            end

            it 'returns false if the attribute has been set to the same value' do

              klass.string_attr  :foo, :default_value => '123'
              klass.integer_attr :age, :default_value => 40

              obj = klass.new

              obj.name.should == nil
              obj.name = nil
              obj.name_changed?.should == false

              obj.foo.should == '123'
              obj.foo = '123'
              obj.foo_changed?.should == false

              ## compares the typecasted & serialized values to check for changes

              obj.age.should == 40
              obj.age = '40'
              obj.age_changed?.should == false
              obj.age.should == 40

              obj.foo.should == '123'
              obj.foo = 123
              obj.foo_changed?.should == false
              obj.foo.should == '123'

            end

            it 'returns true when the value has been changed' do
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.name_changed?.should == true
            end

          end

          context '#attribute_change' do

            it 'returns nil when the attribute has not been changed' do
              obj = klass.new
              obj.name_change.should == nil
            end

            it 'returns the old and new values for changed attributes' do

              # new object
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.name_change.should == [nil, 'new name']

              # loaded object
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name = 'new name'
              obj.name_change.should == ['foo', 'new name']

            end

            it 'keeps track of the original old value, not the previous' do

              # new object
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.name = 'newer name'
              obj.name_change.should == [nil, 'newer name']

              # loaded object
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name = 'new name'
              obj.name = 'newer name'
              obj.name_change.should == ['foo', 'newer name']

            end

            it 'returns the typecasted values (as passed through getters)' do

              klass.send(:define_method, :name) do
                name = self['name']
                name ? name.upcase : nil
              end

              # new object
              obj = klass.new
              obj.name = 'new name'
              obj.name_change.should == [nil, 'NEW NAME']

              # loaded object
              obj = klass['item']
              obj.name.should == 'FOO'
              obj.name = 'new name'
              obj.name_change.should == ['FOO', 'NEW NAME']

            end

          end

          context '#attribute_was' do

            it 'returns the previous value' do

              # new object
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.name_was.should == nil

              # loaded object
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name = 'new name'
              obj.name_was.should == 'foo'

            end

            it 'keeps track of the original value (rather than the previous)' do

              # new object
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.name = 'newer name'
              obj.name_was.should == nil

              # loaded object
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name = 'new name'
              obj.name = 'newer name'
              obj.name_was.should == 'foo'

            end

          end

          context '#reset_attribute!' do

            it 'resets the value clearing changes' do

              # new object
              obj = klass.new
              obj.name.should == nil
              obj.name = 'new name'
              obj.reset_name!
              obj.name_changed?.should == false
              obj.name.should == nil

              # loaded object
              obj = klass['item']
              obj.name.should == 'foo'
              obj.name = 'new name'
              obj.reset_name!
              obj.name_changed?.should == false
              obj.name.should == 'foo'

            end

            it 'resets the value back to the default value on new objects' do

              klass.integer_attr :age, :default_value => 40

              obj = klass.new
              obj.age.should == 40
              obj.age = 41
              obj.reset_age!
              obj.age_changed?.should == false
              obj.age.should == 40

            end

          end

          context '#attribute_will_change!' do

            it 'is called before inplace editing an attribute to track changes' do

              klass.string_attr :foo, :default_value => 'bar'

              # demonstrating how in-place editing by-passes dirty tracking
              obj = klass.new
              obj.foo.should == 'bar'
              obj.foo.gsub!(/r/, 'd')
              obj.foo.should == 'bad'
              obj.foo_change.should == nil # darn!

              # use attribute_will_change! to fix this issue
              obj = klass.new
              obj.foo.should == 'bar'
              obj.foo_will_change!
              obj.foo.gsub!(/r/, 'd')
              obj.foo.should == 'bad'
              obj.foo_change.should == ['bar', 'bad'] # yeah!

            end

          end

          context '#changed?' do

            it 'returns true if the object has any dirty attributes' do
              obj = klass.new
              obj.changed?.should == false
              obj.name = 'new name'
              obj.changed?.should == true
            end

          end

          context '#changed' do

            it 'returns an arry of dirty attribute names' do
              obj = klass.new
              obj.changed.should == []
              obj.name = 'new name'
              obj.changed.should == ['name']
            end

          end

          context '#changes' do

            it 'returns an arry of attribute changes (names => [old, new])' do
              obj = klass.new
              obj.changes.should == {}
              obj.name = 'new name'
              obj.changes.should == { 'name' => [nil, 'new name'] }
            end

          end

        end
      end
    end
  end
end
