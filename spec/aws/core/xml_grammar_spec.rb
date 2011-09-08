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
require 'yaml'
require 'time'

module AWS::Core
  describe XmlGrammar do

    let(:xml) { <<-XML.strip }
      <?xml version="1.0"?>
      <RootElement xmlns="http://some-namespace.com/doc/2011-01-02/">
        <EmptyElement></EmptyElement>
        <TrueElement>true</TrueElement>
        <FalseElement>false</FalseElement>
        <Value>true</Value>
        <StringElement>string value</StringElement>
        <IntegerElement>123</IntegerElement>
        <Tree>
          <LeafA>leaf a</LeafA>
          <Branch>
            <LeafB>leaf b</LeafB>
            <LeafC>leaf c</LeafC>
            <Branch>
              <LeafD>leaf d</LeafD>
            </Branch>
          </Branch>
        </Tree>
        <Values>
          <Value>1</Value>
          <Value>2</Value>
          <Value>3</Value>
          <bar>4</bar>
        </Values>
        <FlatList>flat 1</FlatList>
        <FlatList>flat 2</FlatList>
        <FlatList>flat 3</FlatList>
        <AttrElement foo="bar"/>
        <NestedAttrElement foo="bar1">
          <foo>bar2</foo>
        </NestedAttrElement>
        <MapEntry>
          <Key>key</Key>
          <Value>value</Value>
        </MapEntry>
        <StandardMap>
          <item>
            <k>Name</k>
            <v>John Doe</v>
          </item>
          <item>
            <k>Occupation</k>
            <v>A Nobody</v>
          </item>
        </Map>
      </RootElement>
    XML

    let(:grammar) { XmlGrammar }

    let(:obj) { grammar.parse(xml) }

    context 'Default Grammar' do

      it 'should represent empty elements as nil' do
        obj.empty_element.should be_nil
      end

      it 'should represent string elements as strings' do
        obj.string_element.should == 'string value'
      end

      it 'should represent numeric elements as strings by default' do
        obj.integer_element.should == '123'
      end

      it 'should provide access to nested string elements' do
        obj.tree.leaf_a.should == 'leaf a'
      end

      it 'should provide acccess to deeper nested string elements' do
        obj.tree.branch.leaf_b.should == 'leaf b'
        obj.tree.branch.leaf_c.should == 'leaf c'
        obj.tree.branch.branch.leaf_d.should == 'leaf d'
      end

      it 'flattens elements of the same name by default' do
        obj.values.value.should == '3'
        obj.flat_list.should == 'flat 3'
      end

      it 'provides access to attributes' do
        obj.attr_element.foo.should == 'bar'
      end

      it 'gives priority to nested elements to attributes of same name' do
        obj.nested_attr_element.foo.should == 'bar2'
      end

    end

    context 'Customized Grammars' do

      context '#eql?' do

        it 'should be like the parent grammar' do
          custom_grammar = grammar.customize
          custom_grammar.should eql(grammar)
        end

        it 'should not modify the parent grammar' do
          custom_grammar = grammar.customize do
            element "EmptyElement" do
              rename "NilElement"
            end
          end
          custom_grammar.should_not eql(grammar)
        end

      end

      context '#element' do

        it 'should provide nestable customizations' do
          grammar = XmlGrammar.customize do
            element "Tree" do
              element "Branch" do
                element "Branch" do
                  element "LeafD" do
                    rename "Oak"
                  end
                end
              end
              element "LeafA" do
                rename "Maple"
              end
            end
          end
          obj = grammar.parse(xml)
          obj.tree.branch.branch.oak.should == 'leaf d'
          obj.tree.maple.should == 'leaf a'
          obj.tree
        end

      end

      context '#force' do

        let(:forced_grammar) do
          XmlGrammar.customize do
            element "FakeA" do
              force
              element "FakeB" do
                force
                format_value {|value| 'static value' }
              end
              element "FakeArray" do
                force
                collect_values
              end
              element "NotForced" do
                element "FakeC" do
                  force
                end
              end
            end
          end
        end

        it 'should not respond to customized elements if they do not appear' do
          obj = XmlGrammar.customize do
            element "NonExistent" do
              format_value {|value| nil }
            end
          end.parse(xml)
          obj.should_not respond_to(:non_existent)
        end

        it 'can be forced to create a method' do
          obj = XmlGrammar.customize do
            element "NonExistent" do
              force
            end
          end.parse(xml)
          obj.should respond_to(:non_existent)
          obj.non_existent.should be_nil
        end

        it 'should be able to force a nested path of elements' do
          obj = forced_grammar.parse('<Foo/>')
          obj.fake_a.fake_b.should == 'static value'
        end

        it 'should be able to force a nested array' do
          obj = forced_grammar.parse('<Foo/>')
          obj.fake_a.fake_array.should == []
        end

        it 'should not affect standard elements' do
          obj = forced_grammar.parse('<root><Foo><Bar>abc</Bar></Foo></root>')
          obj.foo.bar.should == 'abc'
        end

      end

      context '#construct_value' do

        let(:tree_obj) { double("tree obj") }

        let(:grammar) do
          tree_obj = self.tree_obj
          XmlGrammar.customize do
            element "Tree" do
              construct_value { tree_obj }
            end
          end
        end

        let(:obj) { grammar.parse(xml) }

        context 'tree object' do

          it 'should be the mock object' do
            obj.tree.should be(tree_obj)
          end

        end

      end

      context '#wrapper' do

        let(:wrapped_grammar) do
          XmlGrammar.customize do
            wrapper(:metadata,
                    :for => ["TrueElement",
                             "SometimesElement",
                             "FlatList"])

            wrapper(:forced_metadata,
                    :for => ["TrueElement",
                             "SometimesElement",
                             "FlatList"]) do
              force
            end

            element "TrueElement" do
              boolean_value
            end

            element "SometimesElement" do
              boolean_value
              force
            end

            element "FlatList" do
              collect_values
            end
          end
        end

        let(:obj) { wrapped_grammar.parse(xml) }

        it 'should create a method to access the wrapper' do
          obj.should respond_to(:metadata)
        end

        context 'wrapper object' do

          let(:wrapper) { obj.metadata }

          it 'should respond to true_element?' do
            wrapper.should respond_to(:true_element?)
          end

          it 'should respond to sometimes_element?' do
            wrapper.should respond_to(:sometimes_element?)
          end

          it 'should respond to flat_list' do
            wrapper.should respond_to(:flat_list)
          end

          context 'true element' do
            it('should be true') { wrapper.true_element?.should be_true }
          end

          context 'sometimes element' do
            it('should be false') { wrapper.sometimes_element?.should be_false }
          end

          context 'flat list' do
            it 'should have the right items' do
              wrapper.flat_list.should == ["flat 1", "flat 2", "flat 3"]
            end
          end

        end

        context 'no elements' do

          let(:obj) { wrapped_grammar.parse("<Foo/>") }

          it 'should not have the non-forced wrapper object' do
            obj.should_not respond_to(:metadata)
          end

          it 'should have the forced wrapper object' do
            obj.should respond_to(:forced_metadata)
          end

        end

        context 'customizing children of the wrapper' do

          it 'should not be allowed' do
            lambda do
              XmlGrammar.customize do
                wrapper :foo, :for => ["Foo", "Bar"] do
                  element("Baz") { }
                end
              end
            end.should raise_error(NotImplementedError,
                                   "can't customize wrapped elements within the wrapper")
          end

        end

      end

      context '#rename' do

        it 'alters the method-name of an element' do
          obj = grammar.customize do
            element "EmptyElement" do
              rename "nil_element"
            end
          end.parse(xml)
          obj.should_not respond_to("empty_element")
          obj.nil_element.should be_nil
        end

        it 'makes the new name for an element ruby-like' do
          obj = grammar.customize do
            element "EmptyElement" do
              rename "NilElement"
            end
          end.parse(xml)
          obj.should_not respond_to("empty_element")
          obj.nil_element.should be_nil
        end

        it 'allows you to rename an element already renamed' do
          first_grammar = grammar.customize do
            element "EmptyElement" do
              rename "first_method_name"
            end
          end
          second_grammar = first_grammar.customize do
            element "EmptyElement" do
              rename "second_method_name"
            end
          end
          obj = second_grammar.parse(xml)
          obj.should_not respond_to(:first_method_name)
          obj.second_method_name.should be_nil
        end

        it 'allows renaming nested elements' do
          obj = grammar.customize do
            element "Tree" do
              element "Branch" do
                rename "Twig"
              end
            end
          end.parse(xml)
          obj.tree.twig.leaf_b.should == 'leaf b'
        end

        it 'allows renaming parentes of renamed nested elements' do
          grammar_a = grammar.customize do
            element "Tree" do
              element "Branch" do
                rename "Twig"
              end
            end
          end
          obj = grammar_a.customize do
            element "Tree" do
              rename "Sapling"
            end
          end.parse(xml)
          obj.sapling.twig.leaf_b.should == 'leaf b'
        end

      end

      context '#format_value' do

        it 'accepts a block that determines the value' do
          obj = grammar.customize do
            element "StringElement" do
              format_value {|value| 'foo' }
            end
          end.parse(xml)
          obj.string_element.should == 'foo'
        end

        it 'accepts a block where super provides the defualt behavior' do
          obj = grammar.customize do
            element "StringElement" do
              format_value {|value| super(value) }
            end
          end.parse(xml)
          obj.string_element.should == 'string value'
        end

        it 'can be used to modify the a default value' do
          obj = grammar.customize do
            element "StringElement" do
              format_value {|value| value.to_sym }
            end
          end.parse(xml)
          obj.string_element.should == :"string value"
        end

        it 'provides access to previous definitions of format_value via super' do

          integer_grammar = grammar.customize do
            element "IntegerElement" do
              format_value {|value| value.to_i }
            end
          end

          multiply_grammar = integer_grammar.customize do
            element "IntegerElement" do
              format_value {|value| super(value) * 2 }
            end
          end

          obj = multiply_grammar.parse(xml)
          obj.integer_element.should == 246

        end

      end

      context '#collect' do

        it 'should collect values of the same name' do

          obj = grammar.customize do
            element "FlatList" do
              collect_values
            end
          end.parse(xml)
          obj.flat_list.should == ['flat 1', 'flat 2', 'flat 3']
        end

        it 'should always return an array, even if no elements appear' do
          grammar = XmlGrammar.customize do
            element "NonExistent" do
              collect_values
            end
          end
          obj = grammar.parse(xml)
          obj.non_existent.should == []
        end

      end

      context '#index' do

        let(:grammar) do
          XmlGrammar.customize do
            element "StandardMap" do
              element "item" do
                index(:items_index) { |v| v.k }
              end
            end
          end
        end

        it 'should expose an empty hash if there are no elements' do
          grammar.parse("<foo/>").items_index.should == {}
        end

        it 'should map the attribute value to the whole object' do
          grammar.parse(xml).items_index.keys.sort.
            should == ["Name", "Occupation"]
          grammar.parse(xml).items_index["Name"].k.should == "Name"
          grammar.parse(xml).items_index["Name"].v.should == "John Doe"
        end

        it 'should work for other context objects' do
          grammar.parse(xml, :context => Object.new).items_index.keys.sort.
            should == ["Name", "Occupation"]
        end

        context 'block returns an array' do

          it 'should use each member as a separate key to the context' do
            obj = XmlGrammar.customize do
              element "Values" do
                element("Value") { list }
                index(:foo) { |v| v.value }
              end
            end.parse(xml)
            obj.foo.keys.sort.should == %w(1 2 3)
            obj.foo.values.uniq.should == [obj.values]
          end

        end

      end

      context '#ignore' do

        let(:ignore_grammar) {
          grammar.customize do
            element "Tree" do
              element "Branch" do
                element "Branch" do
                  ignore
                end
              end
            end
          end
        }

        it 'should cause the grammar to skip an element' do
          obj = ignore_grammar.parse(xml)
          obj.tree.branch.should_not respond_to(:branch)
        end

        it 'should pull the ignored values down 1 level' do
          obj = ignore_grammar.parse(xml)
          obj.tree.branch.leaf_d.should == 'leaf d'
        end

      end

      context '#boolean_value' do

        let(:boolean_grammar) do
          XmlGrammar.customize do
            element "TrueElement" do
              boolean
            end
            element "FalseElement" do
              boolean
            end
            element "MissingBooleanElement" do
              boolean
              force
            end
            element "Value" do
              boolean
            end
          end
        end

        let(:obj) { boolean_grammar.parse(xml) }

        it 'suffixes the getter method with a question mark' do
          obj.should respond_to(:true_element?)
          obj.should respond_to(:false_element?)
        end

        it 'should not respond to the getter methods without question marks' do
          obj.should_not respond_to(:true_element)
          obj.should_not respond_to(:false_element)
        end

        it 'casts the returned value to a boolean' do
          obj.true_element?.should be_true
          obj.false_element?.should be_false
        end

        it 'defaults forced booleans that are missing to false' do
          obj.missing_boolean_element?.should be_false
        end

        it 'does not rename "value" to "value?"' do
          obj.should_not respond_to(:value?)
          obj.value.should be_true
        end

      end

      context '#time_value' do

        let(:grammar) do
          XmlGrammar.customize do
            element "Foo" do
              time_value
            end
          end
        end

        it 'casts a string to a time object' do
          obj = grammar.parse("<Root><Foo>2009-10-24 15:00:00</Foo></Root>")
          obj.foo.should == Time.parse('2009-10-24 15:00:00')
        end

        it 'should leave nil elements alone' do
          obj = grammar.parse("<Root><Foo/></Root>")
          obj.foo.should be_nil
        end

      end

      context '#integer_value' do

        let(:grammar) do
          XmlGrammar.customize do
            element "Foo" do
              integer_value
            end
          end
        end

        it 'casts a string to an integer' do
          obj = grammar.parse("<Root><Foo>123</Foo></Root>")
          obj.foo.should == 123
        end

        it 'should leave nil elements alone' do
          obj = grammar.parse("<Root><Foo/></Root>")
          obj.foo.should be_nil
        end

      end

      context '#float_value' do

        let(:grammar) do
          XmlGrammar.customize do
            element "Foo" do
              float_value
            end
          end
        end

        it 'casts a string to an float' do
          obj = grammar.parse("<Root><Foo>123.456</Foo></Root>")
          obj.foo.should == 123.456
        end

        it 'should leave nil elements alone' do
          obj = grammar.parse("<Root><Foo/></Root>")
          obj.foo.should be_nil
        end

      end

      context '#symbol_value' do

        let(:grammar) do
          XmlGrammar.customize do
            element "Foo" do
              symbol_value
            end
          end
        end

        it 'casts a string to an symbol' do
          obj = grammar.parse("<Root><Foo>abc</Foo></Root>")
          obj.foo.should == :abc
        end

        it 'should leave nil elements alone' do
          obj = grammar.parse("<Root><Foo/></Root>")
          obj.foo.should be_nil
        end

      end

      context '#datetime_value' do

        let(:iso_string) { "2011-02-07T17:24:19.000Z" }
        let(:other_string) { Time.now.to_s }

        let(:grammar) do
          XmlGrammar.customize do
            element "Foo" do
              datetime_value
            end
          end
        end

        it 'casts a string to a DateTime' do
          obj = grammar.parse("<Root><Foo>#{iso_string}</Foo></Root>")
          obj.foo.should == DateTime.parse(iso_string)
        end

        it 'casts a string to a DateTime (non-ISO8601 format)' do
          obj = grammar.parse("<Root><Foo>#{other_string}</Foo></Root>")
          obj.foo.should == DateTime.parse(other_string)
        end

        it 'should leave nil elements alone' do
          obj = grammar.parse("<Root><Foo/></Root>")
          obj.foo.should be_nil
        end

      end

      context '#list' do

        it 'provide accesses to nested lists' do
          obj = grammar.customize do
            element "Values" do
              list "Value"
            end
          end.parse(xml)
          obj.values.should == %w(1 2 3)
        end

        it 'allows further customizations' do
          obj = grammar.customize do
            element "Values" do
              list "Value" do
                rename "renamed_list"
              end
            end
          end.parse(xml)
          obj.renamed_list.should == %w(1 2 3)
        end

#           it 'supports flattening simple lists' do
#             # this can currently be accomplished in other ways
#             # (like ignoring the outer element People and then making
#             # person a list with a rename) -- we might drop this
#             pending do
#               xml = <<-XML.strip
#                 <root>
#                   <People><Person>John</Person></People>
#                   <People><Person>Jane</Person></People>
#                 </root>
#               XML
#               obj = grammar.customize do
#                 element "People" do
#                   list "Person"
#                 end
#               end.parse(xml)
#               obj.people.should == %w(John Jane)
#             end
#           end

      end

      context '#map_entry' do

        let(:custom_grammar) do
          grammar.customize do
            element("MapEntry") { map_entry "Key", "Value" }
          end
        end

        let(:result) { custom_grammar.parse(xml) }

        it 'provides access to flattened maps' do
          result.map_entry.should == { "key" => "value" }
        end

        it 'should be useable from configuration' do
          grammar.customize([{
                               "MapEntry" =>
                               [{ :map_entry => ["Key", "Value"] }]
                             }]).
            parse(xml).map_entry.should == { "key" => "value" }
        end

      end

      context '#map' do
        
        let(:custom_grammar) do
          grammar.customize do
            element("StandardMap") { map 'item', 'k', 'v' }
          end
        end

        let(:result) { custom_grammar.parse(xml) }

        it 'provides access to the map like a hash' do
          result.standard_map.should == {
            'Name' => 'John Doe',
            'Occupation' => 'A Nobody',
          }
        end

        it 'should be useable from configuration' do
          new_grammar = grammar.customize([{
            "StandardMap" => [{ :map => ['item', "k", "v"] }]
          }])
          
          new_grammar.parse(xml).standard_map.should == {
            'Name' => 'John Doe',
            'Occupation' => 'A Nobody',
          }
        end

      end

      context '#add_method' do
        
        it 'adds a method with a return value' do
          obj = XmlGrammar.customize do
            element "Foo" do
              add_method(:bar) { 'bar' }
            end
          end.parse('<root><Foo>abc</Foo></root>')
          obj.foo.bar.should == 'bar'
          obj.foo.should == 'abc'
        end

      end

      it 'should be able to override a default accessor' do
        obj = XmlGrammar.customize do
          element "Foo" do
            add_method(:bar) { (super() * 2).upcase }
          end
        end.parse('<root><Foo><Bar>abc</Bar></Foo></root>')
        obj.foo.bar.should == "ABCABC"
      end
  
      context 'Combining elements' do

        it 'rename plus collect combines flat elements' do
          obj = grammar.customize do
            element "EmptyElement" do
              rename "ShortList"
              collect_values
            end
            element "StringElement" do
              rename "ShortList"
              collect_values
            end
          end.parse(xml)
          obj.short_list.should == [nil, 'string value']
        end

        it 'rename plus collect combines flat + list elements' do
          obj = grammar.customize do
            element "StringElement" do
              rename "FlatList"
              collect_values
            end
            element "FlatList" do
              collect_values
            end
          end.parse(xml)
          obj.flat_list.should == ['string value', 'flat 1', 'flat 2', 'flat 3']
        end

        it 'rename plus collect combines flat + list elements' do
          obj = grammar.customize do
            element "StringElement" do
              rename "FlatList"
              collect_values
            end
            element "FlatList" do
              collect_values
            end
          end.parse(xml)
          obj.flat_list.should == ['string value', 'flat 1', 'flat 2', 'flat 3']
        end

        it 'rename plus collect combines list + nested list elements' do
          combined_grammar = grammar.customize do
            element "Values" do
              list "Value" do
                rename "Combined"
              end
            end
            element "FlatList" do
              rename "Combined"
              collect_values
            end
          end
          obj = combined_grammar.parse(xml)
          obj.combined.should == ['1', '2', '3', 'flat 1', 'flat 2', 'flat 3']
        end

      end

      context 'Configured by hash' do

        let(:config) do
          [
            { "EmptyElement"   => [{ :rename => "NilElement" }] },
            { "TrueElement"    => [{ :rename => "Boolean" }, :boolean] },
            { "IntegerElement" => [:integer] },
            { "FloatElement" => [:float] },
            { "Values" => [
                { :list => "Value" },
                { "Value" => [:long] },
              ],
            },
            { "FlatList" => [
                { :rename => "Symbols" },
                :symbol_value,
                :list
              ]
            },
            { "Tree" => [
                { "Branch" => [
                    { "Branch" => [ { "LeafD" => [ :symbol_value ] } ] },
                  ]
                }
              ]
            },
          ]
        end

        let(:configured_grammar) do
          XmlGrammar.customize(config)
        end

        let(:classic_grammar) do
          XmlGrammar.customize do
            element "EmptyElement" do
              rename "NilElement"
            end
            element "TrueElement" do
              rename "Boolean"
              boolean_value
            end
            element "IntegerElement" do
              integer_value
            end
            element "FloatElement" do
              float_value
            end
            element "Values" do
              list "Value"
              element "Value" do
                integer_value
              end
            end
            element "FlatList" do
              rename "Symbols"
              symbol_value
              list
            end
            element "Tree" do
              element "Branch" do
                element "Branch" do
                  element "LeafD" do
                    symbol_value
                  end
                end
              end
            end
          end
        end

        it 'configured grammars should behave like a classic grammar' do
          configured_grammar.parse(xml).to_yaml.should ==
            classic_grammar.parse(xml).to_yaml
        end

        it 'rejects methods outside the accepted list' do
          lambda {
            XmlGrammar.customize([{"Foo" => [:foo]}])
          }.should raise_error(/foo/)
        end

        it 'rejects methods that require arguments when missing' do
          lambda {
            XmlGrammar.customize([{"Foo" => [:rename]}])
          }.should raise_error(/rename/)
        end

        it 'rejects methods that do not accpet arguments when provided' do
          lambda {
            XmlGrammar.customize([{"Foo" => [{ :integer => "eek" }]}])
          }.should raise_error(/integer/)
        end

      end

      context 'Configured by hash and block' do

        it 'merges hash and block configurations' do
          config = [ {"Foo" => [ { :rename => "Bar" } ] } ]
          grammar = XmlGrammar.customize(config) do
            element "Foo" do
              integer
            end
          end
          obj = grammar.parse("<root><Foo>1</Foo></root>")
          obj.bar.should == 1
        end

        it 'gives precedence to block format' do
          config = [ {"Foo" => [ { :rename => "Bar" } ] } ]
          grammar = XmlGrammar.customize(config) do
            element "Foo" do
              rename "Yuck"
            end
          end
          obj = grammar.parse("<root><Foo>1</Foo></root>")
          obj.should_not respond_to(:bar)
          obj.yuck.should == '1'
        end

      end

    end

    context 'Simulating' do

      def simulate &block
        XmlGrammar.customize(&block).simulate
      end

      it 'should add a method for basic elements and respond with nil' do
        obj = simulate do
          element "foo"
        end
        obj.foo.should == nil
      end

      it 'should add a method for integer elements and respond with 0' do
        obj = simulate do
          element "count" do
            integer_value
          end
        end
        obj.count.should == 0
      end

      it 'should add a method for float elements and respond with 0.0' do
        obj = simulate do
          element "count" do
            float_value
          end
        end
        obj.count.should == 0.0
      end

      it 'should add a method for boolean elements and respond with false' do
        obj = simulate do
          element "ConsistentRead" do
            boolean_value
          end
        end
        obj.consistent_read?.should == false
      end

      it 'should deal with renamed boolean elements' do
        obj = simulate do
          element "IsTruncated" do
            rename :truncated
            boolean_value
          end
        end
        obj.truncated?.should == false
      end

      it 'should add a method for symbol elements and respond with nil' do
        obj = simulate do
          element "foo" do
            symbol_value
          end
        end
        obj.foo.should be_nil
      end

      it 'should skip ignored elements' do
        obj = simulate do
          element "skip_me" do
            ignore
            element "foo"
          end
        end
        obj.should_not respond_to(:skip_me)
      end

      it 'should pull forward elements through ignored elements' do
        obj = simulate do
          element "skip_me" do
            ignore
            element "foo"
          end
        end
        obj.foo.should == nil
      end

      it 'should provide a helpful inspect string' do
        obj = simulate do
          element "foo"
          element "bar"
        end
        obj.inspect.should == "<Stub :bar, :foo>"
      end

      it 'should group elements' do
        obj = simulate do
          element "meta" do
            element "name"
            element("size") { integer_value }
          end
        end
        obj.meta.name.should == nil
        obj.meta.size.should == 0
      end

      it 'should not add empty ignored elements' do
        obj = simulate do
          element "foo" do
            ignore
          end
        end
        obj.should_not respond_to(:foo)
      end

      it 'should respond with [] for list basic list elements' do
        obj = simulate do
          element "people" do
            list
            element "name"
            element "age"
          end
        end
        obj.people.should == []
      end

      it 'should respond with [] for list nested list elements' do
        obj = simulate do
          element "people" do
            list "person"
          end
        end
        obj.people.should == []
      end

      it 'should respond with {} for an index' do
        obj = simulate do
          element "people" do
            index(:person_index) { "name" }
          end
        end
        obj.person_index.should == {}
      end

      context 'with a wrappers and construct values' do

        class FooContext
          attr_accessor :abc, :xyz
          def initialize abc = nil, xyz = nil
            @abc, @xyz = abc, xyz
          end
        end

        let(:obj) {
          grammar = XmlGrammar.customize do
            wrapper :numbers, :for => %w(A B)
            wrapper :booleans, :for => %w(C)
            element "WithContext" do
              construct_value { FooContext.new('abc') }
            end
            element "A" do
              integer_value
            end
            element "B" do
              float_value
              rename :renamed_b
            end
            element "C" do
              boolean_value
            end
            element "D"
          end
          grammar.simulate
        }

        it 'should wrap elements' do
          obj.numbers.should respond_to(:a)
          obj.numbers.should respond_to(:renamed_b)
          obj.should_not respond_to(:a)
          obj.should_not respond_to(:b)
          obj.should respond_to(:d)
        end

        it 'should obseve customizations made to the wrapped elements' do
          obj.numbers.a.should == 0
          obj.numbers.renamed_b.should == 0.0
          obj.booleans.c?.should == false
        end

        it 'should build context using value constructors' do
          obj.with_context.should be_a(FooContext)
          obj.with_context.abc.should == 'abc'
          obj.with_context.xyz.should == nil
        end

      end

    end

    describe XmlGrammar::CustomizationContext do

      context '#deep_copy' do

        it 'should preserve the class' do
          original = XmlGrammar::CustomizationContext.new.merge(:foo => {:baz => "bar"})
          original.deep_copy.should be_a(XmlGrammar::CustomizationContext)
        end

        it 'should preserve the class of the input value' do
          original = XmlGrammar::CustomizationContext.new.merge(:foo => {:baz => "bar"})
          original.deep_copy(:foo => "bar").should be_a(Hash)
        end

        it 'should make a copy of each nested hash' do
          original = XmlGrammar::CustomizationContext.new.merge(:foo => {:baz => "bar"})
          original.deep_copy[:foo].should_not be(original[:foo])
          original.deep_copy.should == original
        end

        it 'should make a copy of each nested customization context' do
          original = XmlGrammar::CustomizationContext.new.merge(:foo => XmlGrammar::CustomizationContext.new)
          original.deep_copy[:foo].should_not be(original[:foo])
          original.deep_copy.should == original
        end

        it 'should not use the overridden indexed-assignment operator' do
          subclass = Class.new(XmlGrammar::CustomizationContext) do
            def []=(name, value)
              fail
            end
          end
          original = subclass.new.merge(:foo => "foo",
                                        :bar => "bar")
          original.deep_copy
        end

      end

    end

  end
end
