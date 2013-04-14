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
    describe Model do

      let(:klass) { Class.new(described_class) }

      before(:each) do
        AWS.config(:access_key_id => "id", :secret_access_key => "secret")
        klass.stub(:name).and_return("ExampleClass")
      end

      after(:each) do
        AWS.config(:access_key_id => nil, :secret_access_key => nil)
      end

      context 'create_domain' do

        it 'should call create on the domain collection' do
          domains = double('sdb-domain-collection')
          domains.should_receive(:create).with('products-1')
          AWS::SimpleDB.stub_chain(:new, :domains).and_return(domains)
          klass.shard_name = 'products-1'
          klass.create_domain
        end

        it 'accepts an override for the shard name' do
          domains = double('sdb-domain-collection')
          domains.should_receive(:create).with('products-2')
          AWS::SimpleDB.stub_chain(:new, :domains).and_return(domains)
          klass.create_domain('products-2')
        end

      end

      context 'sdb_domain' do

        it 'returns a sdb domain object' do
          klass.sdb_domain.should be_a(AWS::SimpleDB::Domain)
        end

        it 'returns a domain with the record class shard name' do
          klass.sdb_domain.name.should == klass.shard_name
        end

        it 'returns a domain with a prefixed shard name when configured' do
          AWS::Record.stub(:domain_prefix).and_return('prefixed')
          klass.sdb_domain.name.should == "prefixed#{klass.shard_name}"
        end

      end

      it_should_behave_like("record class", AWS::Record::Model) do

        # specific to AWS::Record::Model
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

        # specific to AWS::Record::Model
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

        context '[]' do

          let(:data) { double('item-data', :attributes => {
            'name' => %w(abc),
            'age' => %w(40),
            'colors' => %w(blue green),
          })}

          let(:now) { Time.now }

          let(:domain) {
            SimpleDB::Domain.new('shard-name', :config => stub_config)
          }

          before(:each) do

            klass.string_attr :name
            klass.integer_attr :age, :default_value => 40
            klass.string_attr :colors, :set => true
            klass.datetime_attr :tested_at, :default_value => now

            klass.stub(:sdb_domain).and_return(domain)
            domain.stub_chain(:items, :[], :data).and_return(data)

          end

          it 'returns an existing record' do
            klass['item-name'].should be_a(klass)
          end

          it 'populates the shard' do
            klass['item-name'].shard.should == domain.name
          end

          it 'removes the domain prefix' do
            AWS::Record.stub(:domain_prefix).and_return('prefixed-')
            domain.stub(:name).and_return('prefixed-shard-name')
            klass['item-name'].shard.should == 'shard-name'
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

          it 'returns a scope for all records' do

            scope = double('scope')
            scope.should_receive(:find).with(:all, {}).
              and_return(scope)
            Model::Scope.stub(:new).and_return(scope)

            klass.all.should == scope

          end

          it 'passes options' do

            scope = double('scope')
            scope.should_receive(:find).with(:all, :where => 'foo').
              and_return(scope)

            Model::Scope.stub(:new).and_return(scope)

            klass.all(:where => 'foo').should == scope

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
              klass.find(:all).should be_a(Model::Scope)
            end

            it 'should return a scope object with the correct base class' do
              klass.find(:all).base_class.should == klass
            end

            it 'should pass find options to the scope' do
              scope = double('scope')
              opts = double('some-opts').as_null_object
              Model::Scope.should_receive(:new).with(klass).and_return(scope)
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
              Model::Scope.stub(:new).and_return(scope)
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
            scope = double('scope', :count => 12)
            Model::Scope.stub(:new).and_return(scope)
            klass.count.should == 12
          end

          it 'should pass options to Scope#count' do
            scope = double("scope")
            scope.should_receive(:count).with(:foo => 'bar').and_return(12)
            Model::Scope.stub(:new).and_return(scope)
            klass.count(:foo => 'bar').should == 12
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
