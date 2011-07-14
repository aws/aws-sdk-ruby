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
require 'set'

module AWS
  module Record
  
    shared_examples_for("attribute macro") do |allows_set|
  
      let(:klass) { Class.new(Record::Base) }
  
      let(:obj) { klass.new }

      let(:opts) { {} }
  
      before(:each) do
        klass.send(macro, :value, opts)
      end
          
      it 'adds a setter method' do
        obj.should respond_to("value=")
      end
      
      it 'adds a getter method' do
        obj.should respond_to('value')
      end

      it 'defaults value to nil' do
        obj.value.should be_nil
      end

      it 'defaults empty strings to nil' do
        obj.value = ''
        obj.value.should be_nil
      end
    
      it 'returns nil values unmodified for value attributes' do 
        obj.value = nil
        obj.value.should be_nil
      end
  
      context 'before type cast' do
  
        it 'adds a getter method for the raw value' do
          obj.should respond_to(:value_before_type_cast)
        end
  
        it 'returns the raw value' do
          value = double('value', :to_s => '')
          obj.value = value
          obj.value_before_type_cast.should == value
        end
  
      end
  
      context 'with :default_value' do
  
        it 'causes the getter to return the default value' do
          klass.send(macro, :value2, opts.merge(:default_value => default_value))
          klass.new.value2.should == default_value
        end
  
      end
  
      if allows_set
        
        before(:each) do
          klass.send(macro, :multi_values, opts.merge(:set => true))
        end

        context 'with :set' do

          let(:values) {
            case macro
            when :string_attr           then Set.new(%w(abc xyz))
            when :integer_attr          then Set.new([1,2,3])
            when :sortable_integer_attr then Set.new([1,2,3])
            when :float_attr            then Set.new([1.2,3.4,5.6])
            when :sortable_float_attr   then Set.new([1.2,3.4,5.6])
            when :datetime_attr         then Set.new([DateTime.now, DateTime.new])
            else raise 'eek'
            end
          }

          it 'defaults to an empty set' do
            klass.new.multi_values.should == Set.new
          end
  
          it 'returns nil values as empty sets for set attributes' do
            obj.multi_values = nil
            obj.multi_values.should == Set.new
          end
        
          it 'defaults empty strings to an empty set' do
            obj.multi_values = ''
            obj.multi_values.should == Set.new
          end

          it 'accepts an returns proper values' do
            obj = klass.new(:multi_values => values)
            obj.multi_values.should == values
          end
    
          it 'accepts single values but returns it in a set' do
            obj = klass.new(:multi_values => values.first)
            obj.multi_values.should == Set.new([values.first])
          end
    
          it 'works with :default_value' do
            klass.send(macro, :multi_values, opts.merge(:set => true, :default_value => values))
            klass.new.multi_values.should == values
          end

          context 'before type cast' do
      
            it 'returns the value unmodified' do
              obj = klass.new
              obj.multi_values = values.first
              obj.multi_values_before_type_cast.should == values.first
            end

          end
    
        end

      end
    
    end
  
    describe Base do
  
      before(:each) do
        klass.stub(:to_s).and_return('ExampleModel')
      end
      
      let(:klass) do
        Class.new(Record::Base)
      end
  
      it 'is extendable' do
        klass.new.should be_a_kind_of(Record::Base)
      end
  
      context 'extended classes' do
  
        before(:each) do
          AWS.config(:access_key_id => "ACCESS_KEY",
                             :secret_access_key => "SECRET_KEY")
        end
  
        context 'domain_name' do
  
          it 'defaults to domain prefix plus an inflected version of the klass' do
            Record.stub(:domain_prefix).and_return('test')
            klass.domain_name.should == 'testExampleModel'
          end
  
          it 'appends the prefix to custom names' do
            Record.stub(:domain_prefix).and_return('test')
            klass.set_domain_name('FooItems')
            klass.domain_name.should == 'testFooItems'
          end
  
        end
  
        context 'create_domain' do
  
          it 'should call create on the domain collection' do
            domain = double("domain")
            domains = double("domains")
            sdb = double("sdb", :domains => domains)
            AWS::SimpleDB.should_receive(:new).and_return(sdb)
            domains.should_receive(:create).with("foo").and_return(domain)
            Record.stub(:domain_prefix).and_return("")
            klass.set_domain_name("foo")
            klass.create_domain
          end
  
        end
  
        context 'sdb_domain' do
          
          it 'returns a sdb domain object' do
            klass.sdb_domain.should be_a(AWS::SimpleDB::Domain)
          end
  
          it 'returns a domain object with the correct name' do
            klass.sdb_domain.name.should == klass.domain_name
          end
  
        end
  
        context 'attribute macros' do
          
          before(:each) do
            klass.string_attr :name
            klass.integer_attr :price
            klass.float_attr :score
            klass.datetime_attr :when
            klass.boolean_attr :bool_value
          end
    
          let(:obj) { klass.new }
  
          context 'string_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :string_attr }
              let(:default_value) { 'abc' }
            end
            
            it 'returns strings unmodified' do
              obj.name = 'bar'
              obj.name.should == 'bar'
            end
      
            it 'calls to_s on everything else' do
              value = double('value')
              value.should_receive(:to_s).twice.and_return('abc')
              obj.name = value
              obj.name.should == 'abc'
            end
      
          end

          context 'integer_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :integer_attr }
              let(:default_value) { 0 }
            end
      
            it 'returns integers unmodified' do
              obj.price = 123
              obj.price.should == 123
            end
      
            it 'calls to_i on everything else' do
              value = double('value')
              value.should_receive(:to_i).twice.and_return(123)
              obj.price = value
              obj.price.should == 123
            end
  
          end
  
          context 'sortable_integer_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :sortable_integer_attr }
              let(:opts) { { :range => -10..10 } }
              let(:default_value) { 0 }
            end

            it 'requires :range' do
              lambda {
                klass.sortable_integer_attr :foo
              }.should raise_error(ArgumentError, /:range/)
            end

            it 'requires :range to be an integer range' do
              lambda {
                klass.sortable_integer_attr :foo, :range => (1.1..2.1)
              }.should raise_error(ArgumentError, /integer range/)
            end
      
            it 'returns integers unmodified' do
              klass.sortable_integer_attr :age, :range => 0..150
              obj.age = 123
              obj.age.should == 123
            end
      
            it 'calls to_i on everything else' do
              value = double('value')
              value.should_receive(:to_i).twice.and_return(123)
              klass.sortable_integer_attr :age, :range => 0..150
              obj.age = value
              obj.age.should == 123
            end

            it 'raises runtime error when value falls outside range' do
              klass.sortable_integer_attr :age, :range => 0..150
              obj.age = -10
              lambda {
                obj.save
              }.should raise_error(/unable to serialize/)
            end
  
          end
  
          context 'float_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :integer_attr }
              let(:default_value) { 0 }
            end
      
            it 'returns floats unmodified' do
              obj.score = 1.2
              obj.score.should == 1.2
            end
      
            it 'calls to_f on everything else' do
              value = double('float')
              value.should_receive(:to_f).twice.and_return(1.2)
              obj.score = value
              obj.score.should == 1.2
            end
  
          end
  
          context 'sortable_float_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :sortable_float_attr }
              let(:opts) { { :range => -10..10 } }
              let(:default_value) { 0.0 }
            end

            it 'requires :range' do
              lambda {
                klass.sortable_float_attr :foo
              }.should raise_error(ArgumentError, /:range/)
            end

            it 'requires :range to be an integer range' do
              lambda {
                klass.sortable_float_attr :foo, :range => 1.1..2.2
              }.should raise_error(ArgumentError, /integer range/)
            end
      
            it 'returns floats unmodified' do
              klass.sortable_float_attr :score, :range => 0..150
              obj.score = 9.5
              obj.score.should == 9.5
            end
      
            it 'calls to_i on everything else' do
              value = double('value')
              value.should_receive(:to_f).twice.and_return(1.2)
              klass.sortable_float_attr :score, :range => 0..150
              obj.score = value
              obj.score.should == 1.2
            end

            it 'raises runtime error when value falls outside range' do
              klass.sortable_float_attr :volume, :range => 0..10
              obj.volume = 11
              lambda {
                obj.save
              }.should raise_error(/unable to serialize/)
            end
  
          end
  
          context 'boolean_attr' do
            
            it_behaves_like("attribute macro", false) do
              let(:macro) { :boolean_attr }
              let(:default_value) { true }
            end
      
            it 'returns booleans unmodified' do
              obj.bool_value = true
              obj.bool_value.should == true
              obj.bool_value = false
              obj.bool_value.should == false
            end
      
            it 'returns nil unmodified' do
              obj.bool_value = nil
              obj.bool_value.should == nil
            end

            it 'adds a question mark method' do
              obj.bool_value = nil
              obj.bool_value?.should == false
              obj.bool_value = true
              obj.bool_value?.should == true
              obj.bool_value = false
              obj.bool_value?.should == false
            end
  
          end
  
          context 'datetime_attr' do
            
            it_behaves_like("attribute macro", true) do
              let(:macro) { :datetime_attr }
              let(:default_value) { nil }
            end
  
            it 'returns date time objects unmodified' do
              datetime = DateTime.now
              obj.when = datetime
              obj.when.should == datetime
            end
  
            it 'treats integers as timestamps' do
              timestamp = 123456789
              obj.when = timestamp
              obj.when.should == DateTime.parse(Time.at(timestamp).to_s)
            end
  
            it 'converts time objects' do
              time = Time.now
              obj.when = time
              obj.when.should == DateTime.parse(time.to_s)
            end
  
            it 'converts date objects' do
              date = Date.ordinal(2010, 100)
              obj.when = date
              obj.when.should == DateTime.parse(date.to_s)
            end
  
            it 'parses the string value of everything else' do
              value = double('value', :to_s => '2010-01-02T03:04:05z')
              obj.when = value
              obj.when.should == DateTime.parse(value.to_s)
            end
  
            context 'timestamps' do
              it 'calls datetime_attr twice' do
                klass.should_receive(:datetime_attr).with(:created_at)
                klass.should_receive(:datetime_attr).with(:updated_at)
                klass.timestamps
              end
            end
  
          end
  
        end
  
        context 'optimistic_locking' do
          
          it 'adds an integer_attribute with the given name' do
            klass.optimistic_locking :version_id
            klass.attributes['version_id'].should 
              be_an(IntegerAttribute)
          end
  
          it 'defaults the attribute name to version_id' do
            klass.optimistic_locking
            klass.attributes['version_id'].should 
              be_an(IntegerAttribute)
          end
  
        end
    
        context 'attributes' do
          
          it 'returns a hash' do
            klass.attributes.should == {}        
          end
    
          it 'contains an entry for each string_attr' do
            klass.string_attr :foo
            klass.string_attr :bar
            klass.attributes.keys.collect{|k| k.to_s }.sort.should == %w(bar foo)
          end
    
          it 'returns a hash of attributes with string keys' do
            klass.string_attr :foo
            klass.attributes['foo'].should be_a(Attribute)
          end
  
          it 'keeps track of attributes by classes seperately' do
            
            klass1 = Class.new(Record::Base)
            klass1.string_attr :foo
  
            klass2 = Class.new(Record::Base)
            klass2.string_attr :bar
  
            klass1.attributes.keys.should == ['foo']
            klass2.attributes.keys.should == ['bar']
  
          end
    
          context 'for string_attr' do
            
            it 'contains the attribute name' do
              klass.string_attr :foo
              klass.attributes['foo'].name.should == 'foo'
            end
            
            it 'contains the attribute type' do
              klass.string_attr :foo
              klass.attributes['foo'].should be_a(StringAttribute)
            end
            
            it 'contains the attribute default_value value' do
              klass.string_attr :foo, :default_value => 'abc'
              klass.attributes['foo'].default_value.should == 'abc'
            end
            
            it 'contains the attribute :set state' do
              klass.string_attr :abc
              klass.string_attr :foo, :set => true
              klass.string_attr :bar, :set => false
              klass.attributes['abc'].set?.should == false
              klass.attributes['foo'].set?.should == true
              klass.attributes['bar'].set?.should == false
            end
    
          end
        end
  
        context '[]' do
  
          let(:data) { double('item-data', :attributes => {
            'name' => %w(abc),
            'age' => %w(40),
            'colors' => %w(blue green),
          })}
  
          let(:now) { Time.now }
  
          before(:each) do
  
            klass.string_attr :name
            klass.integer_attr :age, :default_value => 40
            klass.string_attr :colors, :set => true
            klass.datetime_attr :tested_at, :default_value => now
  
            klass.stub_chain(:sdb_domain, :items, :[], :data).and_return(data)
  
          end
          
          it 'returns an existing record' do
            klass['item-name'].should be_a(klass)
          end
  
          it 'returns an object with the correct id' do
            klass['item-name'].id.should == 'item-name'
          end
  
          it 'returns an object that is already persisted' do
            klass['item-name'].persisted?.should == true
          end
  
          it 'raises an exception if the item is not found in sdb' do
            data.stub(:attributes).and_return({})
            lambda { klass['foo'] }.should raise_error(RecordNotFound)
          end
  
          it 'it blanks out default values during hydration' do
            klass['item-name'].tested_at.should be_nil
          end
  
          it 'returns an object with the correct attributes' do
            klass['item-id'].attributes.should == {
              'id' => 'item-id',
              'name' => 'abc',
              'age' => 40,
              'colors' => Set.new(%w(blue green)),
              'tested_at' => nil,
            }
          end
  
          it 'ignores attributes not configured' do
  
            data.stub(:attributes).and_return({
                'name' => %w(abc),
                'ignore' => %w(xyz),
              })
  
            lambda {
              klass['item-id'].attributes.should == { 
                'id' => 'item-id',
                'name' => 'abc',
                'age' => nil,
                'tested_at' => nil,
                'colors' => Set.new,
              }
            }.should_not raise_error
          end
  
        end
  
        context 'all' do
  
          it 'calls find(:all)' do
            klass.should_receive(:find).with(:all, {}).and_return("foo")
            klass.all.should == "foo"
          end
  
          it 'passes options' do
            klass.should_receive(:find).with(:all, :foo => "bar")
            klass.all(:foo => "bar")
          end
  
        end
  
        context 'find' do
  
          let(:items) { double('sdb-item-collection') }
  
          before(:each) do
  
            klass.stub_chain(:sdb_domain, :items).and_return(items)
  
            items.stub(:select).and_return([
              double('i1', :name => 'abc', :attributes => { :foo => %w(bar1) }),
              double('i2', :name => 'xyz', :attributes => { :foo => %w(bar2) }),
            ])
  
          end
  
          context ':all' do
  
            it 'should return a scope object' do
              klass.find(:all).should be_a(Scope)
            end
  
            it 'should return a scope object with the correct base class' do
              klass.find(:all).base_class.should == klass
            end
  
            it 'should pass find options to the scope' do
              scope = double('scope')
              opts = double('some-opts').as_null_object 
              Scope.should_receive(:new).with(klass).and_return(scope)
              scope.should_receive(:find).with(:all, opts)
              klass.find(:all, opts)
            end
  
          end
  
          context ':first' do
  
            before(:each) do
              items.stub(:limit).and_return(items)
            end
  
            it 'returns nil when no data is found' do
              items.stub(:select).and_return([])
              klass.find(:first).should == nil
            end
  
            it 'should return an instance of the base class' do
              klass.find(:first).should be_a(klass)
            end
  
            it 'should proxy find to the scope' do
              find_options = double('find-options')
              scope = double('scope')
              scope.should_receive(:find).with(:first, find_options)
              Scope.stub(:new).and_return(scope)
              klass.find(:first, find_options)
            end
  
          end
  
          context 'with options' do
  
            context ':limit' do
              
              it 'should pass limit to the item collection' do
                items.should_receive(:limit).with(100).and_return(items)
                items.should_receive(:select)
                klass.find(:all, :limit => 100).each {|obj|}
              end
  
            end
  
            context ':where' do
  
              it 'should pass string where conditions to the item collection' do
                items.should_receive(:where).with('abc = "xyz"').and_return(items)
                items.should_receive(:select)
                klass.find(:all, :where => 'abc = "xyz"').each{|obj|}
              end
  
              it 'should pass hash where conditions to the item collection' do
                items.should_receive(:where).with(:abc => 'xyz').and_return(items)
                items.should_receive(:select)
                klass.find(:all, :where => { :abc => 'xyz' }).each{|obj|}
              end
  
              it 'should pass where conditions to the item collection' do
                items.should_receive(:where).with('abc = ?', 'xyz').and_return(items)
                items.should_receive(:select)
                klass.find(:all, :where => ['abc = ?', 'xyz']).each{|obj|}
              end
              
            end
  
            context ':order' do
  
              it 'should pass order to the item collection' do
                items.should_receive(:order).with(:name, :asc).and_return(items)
                items.should_receive(:select)
                klass.find(:all, :order => :name).each {|obj|}
              end
  
              it 'should pass order directionality to the item collection' do
                items.should_receive(:order).with(:name, :desc).and_return(items)
                items.should_receive(:select)
                klass.find(:all, :order => [:name, :desc]).each {|obj|}
              end
  
              it 'should accept order as a string' do
                items.should_receive(:order).with('name', :asc).and_return(items)
                items.should_receive(:select)
                klass.find(:all, :order => 'name').each {|obj|}
              end
  
            end
  
          end
  
        end

        context 'count' do

          it 'should call .find and count the result' do
            klass.should_receive(:find).with(:all).
              and_return(double("scope", :count => 12))
            klass.count.should == 12
          end

          it 'should pass options to Scope#count' do
            scope = double("scope")
            klass.stub(:find).and_return(scope)
            scope.should_receive(:count).with(:foo => "bar")
            klass.count(:foo => "bar")
          end

        end

        context 'first' do
  
          let(:items) { double('sdb-item-collection') }
  
          before(:each) do
  
            klass.stub_chain(:sdb_domain, :items).and_return(items)
  
            items.stub(:select).and_return([
              double('i1', :name => 'abc', :attributes => { :foo => %w(bar1) }),
              double('i2', :name => 'xyz', :attributes => { :foo => %w(bar2) }),
            ])
  
          end
  
          it 'should limit the scope to 1 item' do
            items.should_receive(:limit).with(1).and_return(items)
            klass.first
          end
  
          it 'calls .find with options' do
            items.should_receive(:where).with(:name => 'john').and_return(items)
            items.should_receive(:order).with(:name, :desc).and_return(items)
            items.should_receive(:limit).with(1).and_return(items)
            items.should_receive(:select)
            klass.first(
              :where => { :name => 'john' },
              :order => [:name, :desc]
            )
          end
  
        end
      end
    end
  end
end
