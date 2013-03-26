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
    class Model
    describe Scope do

      let(:klass) { Class.new(Record::Base) }

      let(:scope) { Scope.new(klass) }

      let(:items) {
        items = double('sdb-item-collection')
        items.stub(:select).and_return([])
        items.stub(:count).and_return(0)
        items
      }

      before(:each) do
        klass.stub(:name).and_return('Klass')
        klass.string_attr :foo
        klass.stub_chain(:sdb_domain, :items).and_return(items)
      end

      context '#domain' do

        it 'returns a scope object' do
          scope.domain('shard').should be_a(Scope)
        end

        it 'limits subsequent scopes to the specified domain' do

          domain = double('domain')
          domain.stub(:items).and_return(items)

          klass.should_receive(:sdb_domain).with('Klass').and_return(domain)
          klass.should_receive(:sdb_domain).with('shard').and_return(domain)

          scope.domain('shard').find(:all).each{|obj|}

          scope.each{|obj|}
          scope.domain('shard').each{|obj|}

        end

      end

      context '#new' do

        it 'returns a new object of the base class' do
          scope.domain('foo').new.should be_a(klass)
        end

        it 'passes to new the scope domain' do
          scope.domain('foo').new.domain.should == 'foo'
        end

        it 'passes :domain option to new' do
          scope.new(:domain => 'foo').domain.should == 'foo'
        end

        it 'accepts a the domain option as a string' do
          obj = scope.new('domain' => 'shard')
          obj.domain.should == 'shard'
        end

        it 'passes hash conditions to new' do
          klass.string_attr :foo
          obj = klass.where(:foo => 'bar').new
          obj.foo.should == 'bar'
        end

        it 'passes multiple conditions' do

          klass.should_receive(:new).with(
            :shard => klass.name,
            :foo => 'f', :bar => 'b', :yuck => 'y')

          scope.where(:foo => 'f', :bar => 'b').where(:yuck => 'y').new

        end

        it 'does not pass non-hash conditions' do

          klass.should_receive(:new).with(:shard => klass.name, :foo => 'f')

          scope.where(:foo => 'f').where('abc > 10').new

        end

        it 'is aliased to #build' do
          obj = scope.where(:foo => 'f').build
          obj.should be_a(klass)
        end

      end

      context '#find' do

        context ':all' do

          it 'returns a scope object' do
            scope.find(:all).should be_a(Scope)
          end

          it 'accepts a where string' do
            items.should_receive(:where).with('name = "john"').and_return(items)
            scope.find(:all, :where => 'name = "john"').each{|obj|}
          end

          it 'accepts a where string with ? placeholders' do
            items.should_receive(:where).with('name = ?', 'john').
              and_return(items)
            scope.find(:all, :where => ['name = ?', 'john']).each{|obj|}
          end

          it 'accepts a where string with symbol placeholders' do
            items.should_receive(:where).with('name = :name', {:name => 'john'}).
              and_return(items)
            scope.find(:all, :where => ['name = :name', {:name => 'john'}]).
              each{|obj|}
          end

          it 'accepts a where hash condition' do
            items.should_receive(:where).with(:name => 'john').and_return(items)
            scope.find(:all, :where => { :name => 'john' }).each{|obj|}
          end

          it 'accepts an :order option without direction' do
            items.should_receive(:order).with(:name, :asc).and_return(items)
            scope.find(:all, :order => :name).each{|obj|}
          end

          it 'accepts an :order option with direction' do
            items.should_receive(:order).with(:name, :desc).and_return(items)
            scope.find(:all, :order => [:name, :desc]).each{|obj|}
          end

          it 'accepts a :limit option' do
            items.should_receive(:limit).with(1).and_return(items)
            scope.find(:all, :limit => 1).each{|obj|}
          end

        end

        context ':first' do

          before(:each) do
            items.stub(:limit).and_return(items)
          end

          it 'limits the find to 1 record' do
            items.should_receive(:limit).with(1)
            items.should_receive(:select)
            scope.find(:first)
          end

          it 'returns nil when there are no records found' do
            items.stub(:select).and_return([])
            scope.find(:first).should be_nil
          end

          it 'should return an instance object instead of an enumerable scope' do

            items.stub(:select).and_return([
              double('i1', :name => 'abc', :attributes => { 'foo' => %w(bar1) }),
            ])

            first = scope.find(:first)
            first.should be_a(klass)
            first.id.should == 'abc'
            first.foo.should == 'bar1'

          end


        end

        context 'by id' do

          let(:data) { double('item-data', :attributes => { 'foo' => %w(bar) }) }

          let(:domain) { double('sdb-domain') }

          before(:each) do
            klass.stub_chain(:sdb_domain).and_return(domain)
            domain.stub_chain(:items, :[], :data).and_return(data)
          end

          it 'gets the item data via get_attributes instead of select' do
            data.should_receive(:attributes)
            scope.find(123)
          end

          it 'can also receive a domain name' do
            klass.should_receive(:sdb_domain).with('shard').and_return(domain)
            scope.domain('shard').find(123)
          end

        end

      end

      context '#count' do

        it 'returns the count from the item collection' do
          items.stub(:count).and_return(12)
          scope.count.should == 12
        end

        it 'accepts a where string' do
          items.should_receive(:where).with('name = "john"').and_return(items)
          scope.count(:where => 'name = "john"')
        end

        it 'accepts a where string with ? placeholders' do
          items.should_receive(:where).with('name = ?', 'john').
            and_return(items)
          scope.count(:where => ['name = ?', 'john'])
        end

        it 'accepts a where string with symbol placeholders' do
          items.should_receive(:where).with('name = :name', {:name => 'john'}).
            and_return(items)
          scope.count(:where => ['name = :name', {:name => 'john'}])
        end

        it 'accepts a where hash condition' do
          items.should_receive(:where).with(:name => 'john').and_return(items)
          scope.count(:where => { :name => 'john' })
        end

        it 'accepts a :limit option' do
          items.should_receive(:limit).with(1).and_return(items)
          scope.count(:limit => 1)
        end

      end

      context '#where' do

        it 'returns a new scope' do
          scope.where('name IS NOT NULL').should be_a(Scope)
        end

        it 'returns a different scope' do
          new_scope = scope.where('name IS NOT NULL')
          new_scope.should_not == scope
        end

        it 'accepts string where conditions' do
          items.should_receive(:where).with('name IS NOT NULL').and_return(items)
          scope.where('name IS NOT NULL').each{|obj|}
        end

        it 'accepts hash where conditions' do
          items.should_receive(:where).with(:name => 'john doe').and_return(items)
          scope.where(:name => 'john doe').each{|obj|}
        end

        it 'accepts a string with question mark placeholders' do
          items.should_receive(:where).with('name = ?', 'joe').and_return(items)
          scope.where('name = ?', 'joe').each{|obj|}
        end

        it 'accepts a string with symbol placeholders' do
          items.should_receive(:where).with('name = :name', { :name => 'joe' }).
            and_return(items)
          scope.where('name = :name', { :name => 'joe' }).each{|obj|}
        end

        it 'can be chained' do
          items.should_receive(:where).with('name = "joe"').and_return(items)
          items.should_receive(:where).with('age = "40"').and_return(items)
          scope.where('name = "joe"').where('age = "40"').each{|obj|}
        end

        it 'raises an argument error if nothing is passed' do
          lambda { scope.where }.should raise_error(ArgumentError)
        end

      end

      context '#order' do

        it 'returns a new scope' do
          scope.order(:name).should be_a(Scope)
        end

        it 'returns a different scope' do
          new_scope = scope.order(:name)
          new_scope.should_not == scope
        end

        it 'accepts an attribute name and defaults direction to :asc' do
          items.should_receive(:order).with(:name, :asc).and_return(items)
          scope.order(:name).each{|obj|}
        end

        it 'accepts a direction with the attribute name ' do
          items.should_receive(:order).with(:name, :desc).and_return(items)
          scope.order(:name, :desc).each{|obj|}
        end

        it 'clobbers previous orders when chained' do
          items.should_receive(:order).with(:age, :asc).and_return(items)
          scope.order(:name, :desc).order(:age).each{|obj|}
        end

        it 'raises an argument error if nothing is passed' do
          lambda { scope.order }.should raise_error(ArgumentError)
        end

      end

      context '#limit' do

        it 'returns a new scope' do
          scope.limit(1).should be_a(Scope)
        end

        it 'returns a different scope' do
          new_scope = scope.limit(1)
          new_scope.should_not == scope
        end

        it 'accepts an integer limit' do
          items.should_receive(:limit).with(123).and_return(items)
          scope.limit(123).each{|obj|}
        end

        it 'accepts a string limit' do
          items.should_receive(:limit).with('123').and_return(items)
          scope.limit('123').each{|obj|}
        end

        it 'clobbers previous limits when chained' do
          items.should_receive(:limit).with(2).and_return(items)
          scope.limit(1).limit(2).each{|obj|}
        end

        it 'raises an argument error if nothing is passed' do
          lambda { scope.limit }.should raise_error(ArgumentError)
        end

      end

      context 'named scope' do

        it 'should define a method on the klass' do
          klass.scope :foo, klass.where(:foo => 'bar')
          klass.should respond_to(:foo)
        end

        it 'the defined method should return a scope object' do
          klass.scope :foo, klass.where(:foo => 'bar')
          klass.foo.should be_a(Scope)
        end

        it 'the defined method should return a scope object for this class' do
          klass.scope :foo, klass.where(:foo => 'bar')
          klass.foo.base_class.should == klass
        end

        it 'the defined method should return a scope object for this class' do
          klass.scope :foo, klass.where(:foo => 'bar')
          items.should_receive(:where).with(:foo => 'bar').and_return(items)
          items.should_receive(:limit).with(1).and_return(items)
          klass.foo.first
        end

        context 'with blocks' do

        end

      end

      context '#each' do

        it 'returns an enumerator when no block is given' do
          # this is annoying:
          # 1.8.6 only has Enumerable::Enumerator,
          # 1.8.7 has both Enumerable::Enumerator and Enumerator
          # 1.9.2 only has Enumerator (not Enumerable::Enumerator)
          # Scope::Enumerator works everywhere but gives you a warning in 1.9.2
          scope.each.class.name.should =~ /Enumerator$/
        end

        it 'should select all attributes from the domain' do
          items.should_receive(:select)
          scope.each {|obj|}
        end

        it 'should yield once for each item' do
          items.stub(:select).and_return([
            double('i1', :name => 'abc', :attributes => { 'foo' => %w(bar1) }),
            double('i2', :name => 'xyz', :attributes => { 'foo' => %w(bar2) }),
          ])
          yielded = []
          scope.each{|obj| yielded << obj }
          yielded.length.should == 2
        end

        it 'should yield instances of the base class' do
          items.stub(:select).and_return([
            double('i1', :name => 'abc', :attributes => { 'foo' => %w(bar1) }),
          ])
          yielded = []
          scope.each{|obj| yielded << obj }
          yielded.first.should be_a(klass)
        end

      end

      context 'named scopes' do

        it 'can use scopes defined in the base class' do
          klass.scope :cool, klass.where(:tags => 'cool')
          items.should_receive(:where).with(:tags => 'cool').and_return(items)
          scope.cool.each{|obj|}
        end

        it 'can chain named scopes with select' do
          klass.scope :important, klass.order(:score)
          klass.scope :cool, klass.where(:tags => 'cool')
          items.should_receive(:order).with(:score, :asc).and_return(items)
          items.should_receive(:where).with(:tags => 'cool').and_return(items)
          items.should_receive(:select)
          scope.important.cool.each{|obj|}
        end

        it 'can chain named scopes with where' do
          klass.scope :cool, klass.where(:tags => 'cool')
          items.should_receive(:where).with(:tags => 'new').and_return(items)
          items.should_receive(:where).with(:tags => 'cool').and_return(items)
          scope.where(:tags => 'new').cool.each{|obj|}
        end

        it 'can chain named scopes with order' do
          klass.scope :cool, klass.where(:tags => 'cool')
          items.should_receive(:order).with(:name, :asc).and_return(items)
          items.should_receive(:where).with(:tags => 'cool').and_return(items)
          scope.order(:name, :asc).cool.each{|obj|}
        end

        it 'can chain named scopes with limit' do
          klass.scope :cool, klass.where(:tags => 'cool')
          items.should_receive(:limit).with(123).and_return(items)
          items.should_receive(:where).with(:tags => 'cool').and_return(items)
          scope.limit(123).cool.each{|obj|}
        end

        it 'can chain named scopes with other named scopes' do

          klass.scope :quick, klass.where(:speed => 'fast')

          klass.scope :top_10, klass.
            where('name IS NOT NULL').
            order(:name, :desc).
            limit(10)

          items.should_receive(:where).with(:speed => 'fast').and_return(items)
          items.should_receive(:where).with('name IS NOT NULL').and_return(items)
          items.should_receive(:order).with(:name, :desc).and_return(items)
          items.should_receive(:limit).with(10).and_return(items)

          scope.quick.top_10.each{|obj|}

        end

        it 'defines a scope that can be suffixed by find' do

          klass.scope :foo, klass.where(:foo => 'foo')
          items.should_receive(:where).with(:foo => 'foo').and_return(items)
          items.should_receive(:limit).with(1).and_return(items)
          scope.foo.find(:first)

        end

        context 'with blocks' do

          it 'can accept a param' do
            klass.scope(:named) do |name| where(:name => name) end
            items.should_receive(:where).with(:name => 'john').and_return(items)
            scope.named('john').each{|obj|}
          end

          it 'can accept multiple params' do
            klass.scope(:named) do |first,last|
              where(:first_name => first, :last_name => last)
            end
            items.should_receive(:where).
              with(:first_name => 'john', :last_name => 'doe').
              and_return(items)
            scope.named('john', 'doe').each{|obj|}
          end

          it 'can call other named scopes' do
            klass.scope(:named) do |first,last|
              where(:first_name => first, :last_name => last)
            end
            items.should_receive(:where).
              with(:first_name => 'john', :last_name => 'doe').
              and_return(items)
            scope.named('john', 'doe').each{|obj|}
          end

          it 'can chain named scopes with other named scopes' do

            klass.scope :quick, klass.where(:speed => 'fast')

            klass.scope :top_10, klass.
              where('name IS NOT NULL').
              order(:name, :desc).
              limit(10)

            klass.scope :quick_10 do
              quick.top_10
            end

            items.should_receive(:select)
            items.should_receive(:where).with(:speed => 'fast').and_return(items)
            items.should_receive(:where).with('name IS NOT NULL').and_return(items)
            items.should_receive(:order).with(:name, :desc).and_return(items)
            items.should_receive(:limit).with(10).and_return(items)

            scope.quick_10.each{|obj|}

          end

          it 'correctly merges nested scopes' do

            klass.scope :foo, klass.
              where(:foo => 'foo').
              order(:foo, :desc).
              limit(10)

            klass.scope :bar, klass.
              where(:bar => 'bar').
              order(:bar, :asc).
              limit(11)

            klass.scope(:foo_bar) { foo.bar }

            items.should_receive(:select)
            items.should_receive(:where).with(:foo => 'foo').and_return(items)
            items.should_receive(:where).with(:bar => 'bar').and_return(items)
            items.should_receive(:order).with(:bar, :asc).and_return(items)
            items.should_receive(:limit).with(11).and_return(items)

            scope.foo_bar.each{|obj|}

          end

          it 'defines a scope that can be suffixed by find' do
            klass.scope :foo, klass.where(:foo => 'foo')
            klass.scope :bar, klass.where(:bar => 'bar')
            items.should_receive(:where).with(:foo => 'foo').and_return(items)
            items.should_receive(:where).with(:bar => 'bar').and_return(items)
            items.should_receive(:order).with(:foo, :asc).and_return(items)
            items.should_receive(:limit).with(1).and_return(items)
            items.should_receive(:select)
            scope.foo.bar.find(:first, :order => :foo)
          end

        end

      end

    end
    end
  end
end
