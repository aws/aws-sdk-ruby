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
  class SimpleDB
    describe ItemCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:items) { ItemCollection.new(domain) }

      let(:empty_response) { client.new_stub_for(:select) }

      it_behaves_like 'a sdb model object', 'domain'

      it_behaves_like 'enumerable'

      def expect_conditions(client, conditions)
        expression = "SELECT itemName() FROM `#{domain.name}` " +
          conditions
        client.should_receive(:select).
          with(:select_expression => expression).
          and_return(empty_response)
      end

      def expect_output_list(client, list, options = {})
        expression = "SELECT #{list} FROM `#{domain.name}`#{options[:suffix]}"
        client.should_receive(:select).
          with(hash_including(:select_expression => expression)).
          and_return(empty_response)
      end

      context '#initialize' do

        it 'requires a domain' do
          lambda { ItemCollection.new }.should raise_error(ArgumentError)
        end

        it 'accepts a domain' do
          lambda { ItemCollection.new(domain) }.should_not raise_error
        end

      end

      context '#domain' do

        it 'returns the domain passed to #initialize' do
          items.domain.should == domain
        end
      end

      context '#create' do

        it 'returns a new item' do
          items.create('item-name', {}).should be_an(Item)
        end

        it 'returns an item with the correct domain' do
          items.create('item-name', {}).domain.should == items.domain
        end

        it 'returns an item with the correct config' do
          items.create('item-name', {}).config.should == items.config
        end

        it 'replaces attributes on the item' do

          data = { 'foo' => 'bar' }

          attributes = double('sdb-item-attributes')
          attributes.should_receive(:replace).with(data)

          item = double('sdb-item')
          item.should_receive(:attributes).and_return(attributes)
          Item.should_receive(:new).and_return(item)

          items.create('item-name', data)
        end

      end

      context '#[]' do

        it 'returns an item' do
          items['car'].should be_an(Item)
        end

        it 'returns an item with the correct domain' do
          items['car'].domain.should == domain
        end

        it 'returns an item with the correct name' do
          items['car'].name.should == 'car'
        end

        it 'returns an item with the correct config' do
          items['car'].config.should == config
        end

        it 'strinifies symbols' do
          items[:car].name.should == 'car'
        end

      end

      shared_examples_for 'method accepting query options' do |method, *args|

        original_args = args.dup

        options = args.pop if args.last.kind_of?(Hash)
        options ||= {}

        original_args += [{}] unless args.last.kind_of?(Hash)

        shared_examples_for "#{method} accepts query option" do |option_name|

          let(:restricted_items) { double("restricted items") }

          let(:args_with_option) do
            opts = options.dup
            opts[option_name] = "foo"
            args + [opts]
          end

          before(:each) do
            items.stub(option_name).and_return(restricted_items)
            restricted_items.stub(method)
          end

          it "should call ##{option_name} with the option value" do
            items.should_receive(option_name).with("foo").and_return(restricted_items)
            items.send(method, *args_with_option)
          end

          it "should call ##{option_name} with multiple arguments if the value is an array" do
            items.should_receive(option_name).with("foo", "bar").and_return(restricted_items)
            opts = options.dup
            opts[option_name] = ["foo", "bar"]
            items.send(method, *(args + [opts]))
          end

          it "should call ##{method} on the restricted item collection" do
            restricted_items.should_receive(method).with(*original_args).and_yield("FOO")
            obj = double("obj")
            obj.should_receive(:call).with("FOO")
            items.send(method, *args_with_option) { |v| obj.call(v) }
          end

        end

        unless method == :select
          it_should_behave_like "#{method} accepts query option", :select
        end

        it_should_behave_like "#{method} accepts query option", :where
        it_should_behave_like "#{method} accepts query option", :order
        it_should_behave_like "#{method} accepts query option", :limit

      end

      context '#each' do

        let(:select_expression) { "SELECT itemName() FROM `#{domain.name}`" }

        it_should_behave_like 'method accepting query options', :each_batch

        it 'calls select to get all item names from the domain' do
          client.should_receive(:select).
            with(hash_including(:select_expression => select_expression)).
            and_return(client.stub_for(:select))
          items.each{|item|}
        end

        it 'yields an item for each item name returned' do

          response = client.stub_for(:select)
          response.data[:items] = [
            { :name => 'foo' },
            { :name => 'bar' },
            { :name => 'yuck' },
          ]

          client.stub(:select).and_return(response)

          items.all?{|item| item.should be_an(Item) }
          items.collect{|item| item.name }.should == %w(foo bar yuck)

        end

        it 'calls select until the response does not return a next_token' do

          with_next = client.new_stub_for(:select)
          with_next.data[:next_token] = 'abc'

          no_next = client.new_stub_for(:select)

          client.stub(:select).and_return(with_next, with_next, no_next)

          client.should_receive(:select).ordered

          client.should_receive(:select).ordered.
            with(hash_including(:next_token => 'abc'))

          client.should_receive(:select).ordered.
            with(hash_including(:next_token => 'abc'))

          items.each{|item|}

        end

        context 'with options' do

          it 'accepts :next_token' do
            client.should_receive(:select).
              with(hash_including(
                :select_expression => select_expression,
                :next_token => 'abc')).
              and_return(client.stub_for(:select))
            items.each(:next_token => 'abc') {|item|}
          end

          it_behaves_like('accepts :consistent_read option', lambda{|i|}) do
            let(:object) { items }
            let(:method) { :each }
            let(:client_method) { :select }
            let(:response) { client.stub_for(:select) }
          end

        end

      end

      context '#select' do

        it_should_behave_like 'method accepting query options', :select

        it 'accepts attributes as a list' do
          expect_output_list(client, "`foo`, `bar`")
          items.select(:foo, :bar) { |i| }
        end

        it 'accepts attributes in an array' do
          expect_output_list(client, "`foo`, `bar`")
          items.select([:foo, :bar]) { |i| }
        end

        it 'accpets listed attributes with options hash' do
          expect_output_list(client, "`foo`, `bar`", :suffix => ' WHERE num = 1')
          items.select(:foo, :bar, :where => 'num = 1') { |i| }
        end

        it 'accpets array attributes with options hash' do
          expect_output_list(client, "`foo`, `bar`", :suffix => ' WHERE num = 1')
          items.select([:foo, :bar], :where => 'num = 1') { |i| }
        end

        it 'works with a single attribute symbol' do
          expect_output_list(client, "`foo`")
          items.select(:foo) { |i| }
        end

        it 'escapes backticks in attribute names' do
          expect_output_list(client, "`foo``bar`")
          items.select("foo`bar") { |i| }
        end

        it 'selects all attributes by default' do
          expect_output_list(client, "*")
          items.select { |i| }
        end

        it 'converts non-string arguments to strings' do
          expect_output_list(client, "`true`")
          items.select(true) { |i| }
        end

        it 'can accept only options' do
          expect_output_list(client, "*", :suffix => ' WHERE num = 1')
          items.select(:where => 'num = 1') { |i| }
        end

        context 'result' do

          let(:response) do
            resp = client.stub_for(:select)
            resp.data[:items] = [
              {
                :name => 'foo',
                :attributes => [
                  { :name => 'foo', :value => '1' },
                  { :name => 'foo', :value => '2' },
                ]
              }, {
                :name => 'bar',
                :attributes => [
                  { :name => 'foo', :value => '3' },
                  { :name => 'foo', :value => '4' },
                ]
              }, {
                :name => 'yuck',
                :attributes => []
              }
            ]
            resp
          end

          before(:each) { client.stub(:select).and_return(response) }

          it 'yields an ItemData for each item in the response' do
            items.select { |i| i.should be_an(ItemData) }
          end

          it 'stores the name for each item' do
            names = []
            items.select { |i| names << i.name }
            names.should == %w(foo bar yuck)
          end

          it 'stores the attributes for each item' do
            attributes = []
            items.select { |i| attributes << i.attributes["foo"] }
            attributes.should == [%w(1 2), %w(3 4), nil]
          end

          it 'stores the domain for each item' do
            items.select { |i| i.domain.should be(domain) }
          end

          context 'without a block' do

            it 'returns an enumerable for the item data' do
              items.select.map { |i| i.attributes["foo"] }.
                should == [%w(1 2), %w(3 4), nil]
            end

            it 'returns an enumerable when conditions are passed' do
              items.select(:where => { :foo => "Bar" }).
                map { |i| i.attributes["foo"] }.
                should == [%w(1 2), %w(3 4), nil]
            end

          end

        end

      end

      context '#count' do

        it_should_behave_like 'method accepting query options', :count

        it_behaves_like('accepts :consistent_read option', lambda{|i|}) do
          let(:object) { items }
          let(:method) { :count }
          let(:client_method) { :select }
          let(:response) { client.new_stub_for(:select) }
        end

        it 'uses count(*) for the output list' do
          expect_output_list(client, "count(*)")
          items.count
        end

        let(:response) { client.stub_for(:select) }

        let(:count_attribute) {{
          :name => 'Count',
          :value => '123',
        }}

        before(:each) do
          response.data[:items] = [
            :name => 'Domain',
            :attributes => [count_attribute]
          ]
          client.stub(:select).and_return(response)
        end

        it 'should return the Count attribute value' do
          items.count.should == 123
        end

        it 'should add counts from each page of results' do

          resp = client.new_stub_for(:select)
          resp.data[:items] = [{
            :name => 'Domain',
            :attributes => [{ :name => 'Count', :value => 2 }]
          }]

          tokens_and_counts = [['abc',12], ['mno', 12], [nil,2]]

          client.stub(:select).and_return {
            next_token, count = tokens_and_counts.shift
            resp.data[:next_token] = next_token
            resp.data[:items].first[:attributes].first[:value] = count
            resp
          }

          items.count.should == 26

        end

        context 'expression with limit' do

          it 'should stop at the limit' do

            resp = client.new_stub_for(:select)
            resp.data[:items] = [{
              :name => 'Domain',
              :attributes => [{ :name => 'Count', :value => 2 }]
            }]

            tokens_and_counts = [['abc',12], ['mno', 12], [nil,2]]

            client.stub(:select).and_return {
              next_token, count = tokens_and_counts.shift
              resp.data[:next_token] = next_token
              resp.data[:items].first[:attributes].first[:value] = count
              resp
            }

            items.limit(12).count.should == 12

          end

          it 'should keep paging until the limit' do

            resp = client.new_stub_for(:select)
            resp.data[:items] = [{
              :name => 'Domain',
              :attributes => [{ :name => 'Count', :value => 2 }]
            }]

            tokens_and_counts = [['abc',6], ['mno', 6], [nil,2]]

            client.stub(:select).and_return {
              next_token, count = tokens_and_counts.shift
              resp.data[:next_token] = next_token
              resp.data[:items].first[:attributes].first[:value] = count
              resp
            }

            items.limit(12).count.should == 12

          end

        end

      end

      context '#page' do

        let(:response) { client.stub_for(:select) }

        context 'the collection' do

          it 'applies :where, :order and :limit to the page request' do

            client.should_receive(:select).with do |opts|
              opts[:select_expression].should match(/SELECT `name`/)
              opts[:select_expression].should match(/`age` = '40'/)
              opts[:select_expression].should match(/ORDER BY `age` DESC/)
              opts[:select_expression].should match(/LIMIT 10/)
              anything()
            end.and_return(response)

            items.select('name').where(:age => 40).order(:age, :desc).limit(10).page

          end

        end

        context '#per_page' do

          it 'returns a page result object' do
            items.page.should be_a(Core::PageResult)
          end

          it 'defaults per_page to 10' do
            items.page.per_page.should == 10
          end

          it 'accepts a numeric :per_page option' do
            items.page(:per_page => 25).per_page.should == 25
          end

          it 'accepts a string :per_page option' do
            items.page(:per_page => '25').per_page.should == 25
          end

        end

      end

      shared_examples_for "collection mutator" do |method, args, *modified_fields|

        let(:populated_items) do
          items.where("foo is bar").order("foo desc")
        end

        it 'should return an item collection' do
          items.send(method, *args).should be_an(ItemCollection)
        end

        ([:config,
          :conditions,
          :sort_instructions] - modified_fields).each do |field|

          it "should pass along the #{field} to the returned collection" do
            populated_items.send(method, *args).send(field).
              should == populated_items.send(field)
          end

        end

      end

      context '#where' do

        it_should_behave_like "collection mutator", :where, ["foo is bar"], :conditions

        it 'should set the conditions in the returned collection' do
          items.where("foo is bar").conditions.should include("foo is bar")
        end

        def expect_conditions(client, conditions)
          expression = "SELECT itemName() FROM `#{domain.name}` " +
            conditions
          client.should_receive(:select).
            with(hash_including(:select_expression => expression)).
            and_return(empty_response)
        end

        it 'should append a WHERE clause when performing the Select' do
          expect_conditions(client, "WHERE `foo` = 'bar'")
          items.where(:foo => 'bar').each { |i| }
        end

        it 'should join multiple conditions with AND' do
          expect_conditions(client, "WHERE `foo` = 'bar' AND `baz` = 'zap'")
          items.where(:foo => 'bar').
            where(:baz => 'zap').each { |i| }
        end

        context 'hash conditions' do

          it 'should translate a hash to equality conditions' do
            items.where(:foo => 'bar').conditions.
              should == ["`foo` = 'bar'"]
          end

          it 'should escape single quotes' do
            items.where(:foo => "bar''s zap").conditions.
              should == ["`foo` = 'bar''''s zap'"]
          end

          it 'should use IN with an array value' do
            items.where(:foo => ["bar", "baz"]).conditions.
              should == ["`foo` IN ('bar', 'baz')"]
          end

          it 'should use BETWEEN with a range value' do
            items.where(:foo => 1..21).conditions.
              should == ["`foo` BETWEEN '1' AND '21'"]
          end

          it 'should use >= and < with an exclusive range value' do
            items.where(:foo => 1...21).conditions.
              should == ["(`foo` >= '1' AND `foo` < '21')"]
          end

        end

        context 'placeholders' do

          it 'should escape backticks in an attribute name' do
            items.where("`foo`" => "bar").conditions.
              should == ["```foo``` = 'bar'"]
          end

          it 'should perform simple placeholder substitution' do
            items.where('`foo` = ? ', "bar").conditions.
              should == ["`foo` = 'bar' "]
          end

          it 'should ignore question marks inside of attribute names' do
            items.where('`foo?` = ? ', "bar").conditions.
              should == ["`foo?` = 'bar' "]
          end

          it 'should ignore question marks inside of attribute values (single quotes)' do
            items.where("foo like '?%?' and bar like ? ", "baz").conditions.
              should == ["foo like '?%?' and bar like 'baz' "]
          end

          it 'should ignore question marks inside of attribute values (double quotes)' do
            items.where('foo like "?%?" and bar like ? ', "baz").conditions.
              should == ["foo like \"?%?\" and bar like 'baz' "]
          end

          it 'should put parentheses around an array value' do
            items.where("foo in ?", ['a', 'b']).conditions.
              should == ["foo in ('a', 'b')"]
          end

          it 'should flatten an array value' do
            items.where("foo in ?", [['a'], 'b']).conditions.
              should == ["foo in ('a', 'b')"]
          end

          it 'should call to_s on the value' do
            obj = double("obj", :to_s => "foobar")
            items.where("foo = ?", obj).conditions.
              should == ["foo = 'foobar'"]
          end

          it 'should raise an error when there are too many placeholders' do
            lambda do
              items.where("foo = ?")
            end.should raise_error(ArgumentError, "missing value for placeholder 1")
          end

          it 'should raise an error when there are too many values' do
            lambda do
              items.where("foo = 'bar'", "baz")
            end.should raise_error(ArgumentError, 'extra value(s): ["baz"]')
          end

          it 'should substitute named placeholders' do
            items.where("foo = :foo", :foo => "bar").conditions.
              should == ["foo = 'bar'"]
          end

          it 'should substitute named placeholders using string keys' do
            items.where("foo = :foo", "foo" => "bar").conditions.
              should == ["foo = 'bar'"]
          end

          it 'should raise an error if the hash has no entry for a placeholder' do
            lambda { items.where("foo = :foo", :foos => "bar") }.
              should raise_error(ArgumentError, "missing value for placeholder :foo")
          end

        end

      end

      context '#order' do

        it_should_behave_like("collection mutator", :order, [:foo],
                              :sort_instructions, :conditions)

        it 'should set the sort instructions on the returned collection' do
          items.order("foo").sort_instructions.should == "`foo`"
        end

        it 'should overwrite the previous sort instructions' do
          items.order("bar").order("foo").
            sort_instructions.should == "`foo`"
        end

        it 'should accept a symbol attribute name' do
          items.order(:foo).sort_instructions.should == "`foo`"
        end

        it 'should accept a sort direction' do
          items.order(:foo, :desc).sort_instructions.should == "`foo` DESC"
        end

        context 'direction aliases' do

          it 'should allow desc' do
            items.order("foo", :desc).sort_instructions.should == "`foo` DESC"
          end

          it 'should allow asc' do
            items.order("foo", :asc).sort_instructions.should == "`foo` ASC"
          end

          it 'should allow descending' do
            items.order("foo", :descending).sort_instructions.should == "`foo` DESC"
          end

          it 'should allow ascending' do
            items.order("foo", :ascending).sort_instructions.should == "`foo` ASC"
          end

        end

        it 'should append an ORDER clause and IS NOT NULL condition to the query' do
          expression = "SELECT itemName() FROM `#{domain.name}` " +
            "WHERE `foo` IS NOT NULL "+
            "ORDER BY `foo`"
          client.should_receive(:select).
            with(hash_including(:select_expression => expression)).
            and_return(empty_response)
          items.order("foo").each { |i| }
        end

        it 'should only add one condition due to an #order call' do
          expression = "SELECT itemName() FROM `#{domain.name}` " +
            "WHERE `foo` IS NOT NULL "+
            "ORDER BY `foo`"
          client.should_receive(:select).
            with(hash_including(:select_expression => expression)).
            and_return(empty_response)
          items.order("bar").order("foo").each { |i| }
        end

      end

      context '#limit' do

        it_should_behave_like 'collection mutator', :limit, [10], :limit

        it 'should set the limit on the returned collection' do
          items.limit(10).limit.should == 10
        end

        it 'should stringify the limit value' do
          items.limit('10').limit.should == 10
        end

        it 'should reject empty strings' do
          lambda {
            items.limit('')
          }.should raise_error(ArgumentError, /invalid value/)
        end

        it 'should add a LIMIT clause to the query' do
          expression = "SELECT itemName() FROM `#{domain.name}` " +
            "LIMIT 10"
          client.should_receive(:select).
            with(hash_including(:select_expression => expression)).
            and_return(empty_response)
          items.limit(10).each { |i| }
        end

        it 'should make one call if the right number of results is returned' do

          response = client.stub_for(:select)
          response.data[:items] = [
            { :name => 'foo' },
            { :name => 'bar' },
            { :name => 'yuck' },
          ]
          response.data[:next_token] = 'abc'

          client.should_receive(:select).and_return(response)
          client.should_not_receive(:select).with(hash_including(:next_token))

          items.limit(3).to_a

        end

        it 'should use the next token until all results are returned' do

          resp1 = client.new_stub_for(:select)
          resp1.data[:items] = [{ :name => 'foo' }, { :name => 'bar' }]
          resp1.data[:next_token] = 'abc'

          resp2 = client.new_stub_for(:select)
          resp2.data[:items] = [{ :name => 'yuck' }]
          resp2.data[:next_token] = 'def'

          client.should_receive(:select).and_return(resp1)

          client.should_receive(:select).
            with(hash_including(:next_token => 'abc')).
            and_return(resp2)

          client.should_not_receive(:select).
            with(hash_including(:next_token => 'def'))

          items.limit(3).to_a

        end

      end

    end
  end
end
