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
require 'base64'

module AWS
  module Core
    module XML

      describe Parser do

        let(:time_string) { '2010-01-01T01:02:03.123Z' }

        let(:alt_time_string) { '2010-01-01 01:02:03' }

        let(:xml) { <<-XML.strip }
          <?xml version="1.0" encoding="ISO-8859-1"?>
          <RootElement xmlns="http://some-namespace.com/doc/2011-01-02/">
            <EmptyElement></EmptyElement>
            <TrueElement>true</TrueElement>
            <FalseElement>false</FalseElement>
            <Value>true</Value>
            <StringElement>String Value</StringElement>
            <BlobElement>#{Base64.encode64('blob-value')}</BlobElement>
            <IntegerElement>123</IntegerElement>
            <FloatElement>123.456</FloatElement>
            <DateTimeLikeElement>#{time_string}</DateTimeLikeElement>
            <AlternateDateTime>#{alt_time_string}</AlternateDateTime>
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
          </RootElement>
        XML

        let(:grammar) { Grammar.new }

        let(:rules) { grammar.rules }

        let(:data) { Data.new(Parser.new(rules).parse(xml)) }

        context 'without rules' do

          it 'represents empty elements as nil' do
            data.empty_element.should be_nil
          end

          it 'represent string elements as strings' do
            data.string_element.should == 'String Value'
          end

          it 'represents numeric elements as strings by default' do
            data.integer_element.should == '123'
          end

          it 'provides access to nested string elements' do
            data.tree.leaf_a.should == 'leaf a'
          end

          it 'provides acccess to deeper nested string elements' do
            data.tree.branch.leaf_b.should == 'leaf b'
            data.tree.branch.leaf_c.should == 'leaf c'
            data.tree.branch.branch.leaf_d.should == 'leaf d'
          end

          it 'flattens elements of the same name by default' do
            data.values.value.should == '3'
            data.flat_list.should == 'flat 3'
          end

          it 'provides access to attributes' do
            data.attr_element.foo.should == 'bar'
          end

          it 'gives priority to nested elements to attributes of same name' do
            data.nested_attr_element.foo.should == 'bar2'
          end

        end

        context 'typecasting elements' do

          context 'boolean' do

            let(:xml) { <<-XML.strip }
              <?xml version="1.0" encoding="ISO-8859-1"?>
              <RootElement xmlns="http://some-namespace.com/doc/2011-01-02/">
                <EmptyElement></EmptyElement>
                <TrueElement>true</TrueElement>
                <FalseElement>false</FalseElement>
              </RootElement>
            XML

            let(:grammar) {
              Grammar.customize do
                element 'TrueElement' do
                  boolean_value
                  force
                end
                element 'FalseElement' do
                  boolean
                end
                element 'EmptyElement' do
                  boolean
                end
                element 'NonExistentBoolean' do
                  boolean
                  force
                end
              end
            }

            it 'type casts "true" to the boolean true', :abc => true do
              # also test that a forced boolean element (which defaults
              # to false when missing) can be be a true value when present
              data.true_element.should == true
            end

            it 'type casts "false" to the boolean false' do
              data.false_element.should == false
            end

            it 'type casts nil to the boolean false' do
              data.empty_element.should == false
            end

            it 'defaults forced-missing boolean elements to false' do
              data.non_existent_boolean.should == false
            end

            it 'adds question-mark methods to the resonse structure' do
              data.respond_to?(:true_element?).should == true
              data.respond_to?(:false_element?).should == true
              data.respond_to?(:empty_element?).should == true
              data.respond_to?(:non_existent_boolean?).should == true
            end

          end

          context 'datetime' do

            let(:grammar) {
              Grammar.customize do
                element('DateTimeLikeElement') { datetime }
                element('AlternateDateTime') { datetime }
                element('EmptyElement') { datetime }
              end
            }

            it 'can convert the standard amazon format to a datetime object' do
              data.date_time_like_element.should be_a(DateTime)
              [
                "2010-01-01T01:02:03+00:00",   # 1.8, 1.9.2
                "2010-01-01T01:02:03+2952:00", # 1.9.3
              ].should include(data.date_time_like_element.to_s)
            end

            it 'can convert non standard amazon formats to datetime objects' do
              data.alternate_date_time.should == DateTime.parse(alt_time_string)
            end

            it 'returns empty elements typed a datetime as nil' do
              data.empty_element.should == nil
            end

          end

          context 'time' do

            let(:grammar) {
              Grammar.customize do
                element('DateTimeLikeElement') { time }
                element('AlternateDateTime') { time }
                element('EmptyElement') { time }
              end
            }

            it 'can convert the standard amazon format to a time object' do
              data.date_time_like_element.should be_a(Time)
              data.date_time_like_element.to_s.should == Time.parse(time_string).to_s
            end

            it 'can convert non standard amazon formats to time objects' do
              data.alternate_date_time.should == Time.parse(alt_time_string)
            end

            it 'returns empty elements typed a time as nil' do
              data.empty_element.should == nil
            end

          end

          context 'blob' do

            let(:grammar) {
              Grammar.customize do
                element("BlobElement") { blob }
                element('EmptyElement') { blob }
              end
            }

            it 'should base64 decode blob elements' do
              data.blob_element.should == 'blob-value'
            end

            it 'empty elements typed as blobs are returned as nil' do
              data.empty_element.should == nil
            end

          end

          context 'integer' do

            let(:grammar) {
              Grammar.customize do
                element('IntegerElement') { integer }
                element('EmptyElement') { integer }
              end
            }

            it 'should cast values to an integer' do
              data.integer_element.should == 123
            end

            it 'empty elements typed as integer are returned as nil, not zero' do
              data.empty_element.should == nil
            end

          end

          context 'float' do

            let(:grammar) {
              Grammar.customize do
                element('FloatElement') { float }
                element('EmptyElement') { integer }
              end
            }

            it 'should cast values to an float' do
              data.float_element.should == 123.456
            end

            it 'empty elements typed as floats are returned as nil, not zero' do
              data.empty_element.should == nil
            end

          end

          context 'symbol' do

            let(:grammar) {
              Grammar.customize do
                element('Value') { symbol }
                element('StringElement') { symbol }
                element('EmptyElement') { symbol }
              end
            }

            it 'should cast values to a symbol' do
              data.value.should == :true
            end

            it 'formats string values with ruby_name before symbolizing' do
              # string_element normally would be "String Value"
              data.string_element.should == :string_value
            end

            it 'empty elements typed as symbols are returned as nil, not symbols' do
              data.empty_element.should == nil
            end

          end

        end

        context 'renaming elements' do

          let(:grammar) {
            Grammar.customize do
              element('EmptyElement') { rename(:new_name) }
            end
          }

          it 'renames elements as they appear in the data hash' do
            data.new_name.should == nil
          end

          it 'no longer provides access to the element via the old name' do
            data.respond_to?(:empty_element).should == false
          end

        end

        context 'collecting elements' do

          let(:grammar) {
            Grammar.customize do
              element('FlatList') { list }
              element('NonExistentElement') { list }
              element('Values') { list 'Value' }
            end
          }

          it 'should be able to collect values from amoungst others' do
            data.flat_list.should == ['flat 1', 'flat 2', 'flat 3']
          end

          it 'should be able to turn a nested structure into a list' do
            data.values.should == %w(1 2 3)
          end

          it 'always returns an array, even if the element is missing' do
            data.non_existent_element.should == []
          end

        end

        context 'forcing elements' do

          let(:grammar) {
            Grammar.customize do
              element('MissingElement') { force }
              element('Fake1') do
                force
                element('Fake2') do
                  force
                  element('Fake3') do
                    force
                    boolean
                  end
                end
              end
            end
          }

          it 'forces an entry in the response data even when not present in xml' do
            data.missing_element.should == nil
          end

          it 'can force elements down a tree' do
            data.fake_1.fake_2.fake_3.should == false
          end

        end

        context 'wrapping elements' do

          let(:grammar) {
            Grammar.customize do

              wrapper(:metadata,
                :for => ['TrueElement', 'NonExistentBoolean', 'FlatList'])

              element "TrueElement" do
                boolean_value
              end

              element "NonExistentBoolean" do
                boolean_value
                force
              end

              element "FlatList" do
                collect_values
              end

            end
          }

          it 'adds a method for the wrapper' do
            data.should respond_to(:metadata)
          end

          it 'should nest wrapped elements' do
            data.metadata.true_element.should == true
          end

          it 'should wrap forced missing elements' do
            data.metadata.non_existent_boolean.should == false
          end

          it 'should be able to wrap lists' do
            data.metadata.flat_list.should == ['flat 1', 'flat 2', 'flat 3']
          end

          it 'should not provide access to wrapped elements at their old loc' do
            data.should_not respond_to(:true_element)
            data.should_not respond_to(:non_existent_element)
            data.should_not respond_to(:flat_list)
          end

        end

        context 'ignoring elements' do

          let(:grammar) {
            Grammar.customize do
              element 'Tree' do
                element 'Branch' do
                  element 'Branch' do
                    ignore
                  end
                end
              end
            end
          }

          it 'pulls child elements back 1 element from ignored elements' do
            data.tree.branch.leaf_d.should == 'leaf d'
          end

          it 'does not add a method to to response data for the ignored element' do
            data.tree.branch.should_not respond_to(:branch)
          end

          it 'does not affect access to children below the ignored element' do
            data.tree.leaf_a.should == 'leaf a'
            data.tree.branch.leaf_b.should == 'leaf b'
            data.tree.branch.leaf_c.should == 'leaf c'
          end

          context 'nested ignore rules' do

            let(:grammar) {
              Grammar.customize do
                element "Base" do
                  ignore
                  element "Nested" do
                    ignore
                    element("Count") { integer } # not ignored
                  end
                end
              end
            }

            let(:xml) { <<-XML.strip }
              <XML>
                <Base>
                  <Nested>
                    <Count>123</Count>
                  </Nested>
                </Base>
              </XML>
            XML

            it 'should support nested ignores' do
              data.count.should eq(123)
            end

          end

        end

        context 'indexing elements' do

          let(:xml) { <<-XML.strip }
            <xml>
              <Foo>
                <Bucket>
                  <Foo>abc</Foo>
                  <Bar>123</Bar>
                  <Value>first</Value>
                  <Children>
                    <Child>
                      <Name>
                        <Number>1</Number>
                        <Alias>child-1</Alias>
                      </Name>
                    </Child>
                    <Child>
                      <Name>
                        <Number>2</Number>
                        <Alias>child-2</Alias>
                      </Name>
                    </Child>
                  </Children>
                </Bucket>
                <Bucket>
                  <Foo>mno</Foo>
                  <Bar>456</Bar>
                  <Value>second</Value>
                  <Children>
                    <Child>
                      <Name>
                        <Number>3</Number>
                        <Alias>child-3</Alias>
                      </Name>
                    </Child>
                    <Child>
                      <Name>
                        <Number>4</Number>
                        <Alias>child-4</Alias>
                      </Name>
                    </Child>
                  </Children>
                </Bucket>
                <Bucket>
                  <Foo>xyz</Foo>
                  <Bar>789</Bar>
                  <Value>third</Value>
                  <Children>
                    <Child>
                      <Name>
                        <Number>5</Number>
                        <Alias>child-5</Alias>
                      </Name>
                    </Child>
                    <Child>
                      <Name>
                        <Number>6</Number>
                        <Alias>child-6</Alias>
                      </Name>
                    </Child>
                  </Children>
                </Bucket>
              </Foo>
            </xml>
          XML

          let(:base_grammar) {
            Grammar.customize do
              element "Foo" do
                element "Bucket" do
                  rename :buckets
                  list
                  element "Children" do
                    list "Child"
                    element "Child" do
                      element "Name" do
                        element "Number" do
                          integer
                        end
                      end
                    end
                  end
                end
              end
            end
          }

          context 'single-key index' do

            let(:grammar) {
              base_grammar.customize do
                element("Foo") do
                  element("Bucket") do
                    index :bucket_index, :key => :foo
                  end
                end
              end
            }

            it 'creates an index at the root level' do
              data.bucket_index['abc'].value.should == 'first'
              data.bucket_index['mno'].value.should == 'second'
              data.bucket_index['xyz'].value.should == 'third'
            end

          end

          context 'composite-key index' do

            let(:grammar) {
              base_grammar.customize do
                element("Foo") do
                  element("Bucket") do
                    index :bucket_index, :keys => [:foo, :bar]
                  end
                end
              end
            }

            it 'creates an index at the root level' do
              data.bucket_index['abc:123'].value.should == 'first'
              data.bucket_index['mno:456'].value.should == 'second'
              data.bucket_index['xyz:789'].value.should == 'third'
            end

          end

          context 'key-path index' do

            let(:grammar) {
              base_grammar.customize do
                element("Foo") do
                  element("Bucket") do
                    index :bucket_index, :key_path => [:children, :name, :alias]
                  end
                end
              end
            }

            it 'creates an index at the root level' do
               data.bucket_index['child-1'].value.should == 'first'
               data.bucket_index['child-2'].value.should == 'first'
               data.bucket_index['child-3'].value.should == 'second'
               data.bucket_index['child-4'].value.should == 'second'
               data.bucket_index['child-5'].value.should == 'third'
               data.bucket_index['child-6'].value.should == 'third'
            end

          end

        end

        context 'nested indexes' do

          let(:xml) { "<xml></xml>" }

          let(:grammar) {
            Grammar.customize do
              element "Things" do
                list "Thing" do
                  index :thing_index, :key => :name
                end
              end
            end
          }

          it 'adds an index even if no elements are present for the index' do
            data.thing_index.should == {}
          end

        end

        context 'base64 encoded strings' do

          let(:xml) { <<-XML.strip }
            <XML>
              <Foo encoding="base64">#{Base64.encode64('foo')}</Foo>
              <Nested>
                <Bar encoding="base64">#{Base64.encode64('bar')}</Bar>
              </Nested>
            </XML>
          XML

          it 'returns base64 encoded elements decoded' do
            data.foo.should == 'foo'
          end

          it 'returns nested base64 encoded elements decoded' do
            data.nested.bar.should == 'bar'
          end

        end

        context 'maps' do

          let(:xml) { <<-XML.strip }
            <XML>
              <StandardMap>
                <Attribute>
                  <Key>Name</Key>
                  <Value>John Doe</Value>
                </Attribute>
                <Attribute>
                  <Key>Occupation</Key>
                  <Value>Annonymous Coward</Value>
                </Attribute>
              </StandardMap>
              <abbreviated_map>
                <e>
                  <k>Name</k>
                  <v>Jane Doe</v>
                </e>
                <e>
                  <k>Occupation</k>
                  <v>Annonymous Cowardess</v>
                </e>
              </abbreviated_map>
            </XML>
          XML

          let(:grammar) {
            Grammar.customize do
              element 'StandardMap' do
                map 'Attribute', 'Key', 'Value'
              end
              element 'abbreviated_map' do
                map 'e', 'k', 'v'
              end
            end
          }

          it 'converts maps into hashes' do
            #data.standard_map.should be_a(Hash)
            data.standard_map['Name'].should == 'John Doe'
            data.standard_map['Occupation'].should == 'Annonymous Coward'
          end

          it 'accepts non standard key/value labels' do
            #data.abbreviated_map.should be_a(Hash)
            data.abbreviated_map['Name'].should == 'Jane Doe'
            data.abbreviated_map['Occupation'].should == 'Annonymous Cowardess'
          end

        end

        context 'map entries' do

          let(:xml) { <<-XML.strip }
            <XML>
              <Foo>bar</Foo>
              <Attributes>
                <Key>Name</Key>
                <Value>John Doe</Value>
              </Attributes>
              <Attributes>
                <Key>Occupation</Key>
                <Value>Annonymous Coward</Value>
              </Attributes>
              <e>
                <k>Name</k>
                <v>Jane Doe</v>
              </e>
              <e>
                <k>Occupation</k>
                <v>Annonymous Cowardess</v>
              </e>
            </XML>
          XML

          let(:grammar) {
            Grammar.customize do
              element('Attributes') { map_entry 'Key', 'Value' }
              element('e') { map_entry 'k', 'v' }
            end
          }

          it 'can collect map entrys without a wrapping element' do
            data.attributes['Name'].should == 'John Doe'
            data.attributes['Occupation'].should == 'Annonymous Coward'
          end

          it 'can collect map entries with ireggular keys' do
            data.e['Name'].should == 'Jane Doe'
            data.e['Occupation'].should == 'Annonymous Cowardess'
          end

        end

        context 'nested maps' do

          let(:xml) { <<-XML.strip }
            <XML>
              <Services>
                <Service>
                  <Name>ec2</Name>
                  <Regions>
                    <Region>
                      <Name>eu-west-1</Name>
                      <Endpoint>ec2.eu-west-1.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>sa-east-1</Name>
                      <Endpoint>ec2.sa-east-1.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>us-east-1</Name>
                      <Endpoint>ec2.us-east-1.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>ap-northeast-1</Name>
                      <Endpoint>ec2.ap-northeast-1.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>us-west-2</Name>
                      <Endpoint>ec2.us-west-2.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>us-west-1</Name>
                      <Endpoint>ec2.us-west-1.amazonaws.com</Endpoint>
                    </Region>
                    <Region>
                      <Name>ap-southeast-1</Name>
                      <Endpoint>ec2.ap-southeast-1.amazonaws.com</Endpoint>
                    </Region>
                  </Regions>
                </Service>
              </Services>
            </XML>
          XML

          let(:grammar) {
            Grammar.customize do
              element "Services" do
                map "Service", "Name", "Regions"
                element "Service" do
                  element "Regions" do
                    map "Region", "Name", "Endpoint"
                  end
                end
              end
            end
          }

          it 'translates maps of maps' do
            data.should == {:services=>{"ec2"=>{"eu-west-1"=>"ec2.eu-west-1.amazonaws.com", "sa-east-1"=>"ec2.sa-east-1.amazonaws.com", "us-east-1"=>"ec2.us-east-1.amazonaws.com", "ap-northeast-1"=>"ec2.ap-northeast-1.amazonaws.com", "us-west-2"=>"ec2.us-west-2.amazonaws.com", "us-west-1"=>"ec2.us-west-1.amazonaws.com", "ap-southeast-1"=>"ec2.ap-southeast-1.amazonaws.com"}}}
          end

        end

        context "default values" do

          let(:xml) { <<-XML.strip }
            <XML>
              <Items>
                <Item></Item>
                <Item>
                  <Name>Abc</Name>
                </Item>
                <Item>
                  <Name>Mno</Name>
                  <Count>5</Count>
                </Item>
                <Item>
                  <Name>Xyz</Name>
                  <Count>10</Count>
                  <Admin>true</Admin>
                </Item>
              </Items>
            </XML>
          XML

          let(:grammar) {
            Grammar.customize do
              element "Items" do
                list "Item" do
                  default_value :name, '***'
                  default_value :count, 0
                  default_value :admin, false
                  element "Count" do
                    integer_value
                  end
                  element "Admin" do
                    boolean_value
                  end
                end
              end
            end
          }

          it 'inserts values where specified' do
            data.should == { :items => [
              { :name => '***', :count => 0,  :admin => false },
              { :name => 'Abc', :count => 0,  :admin => false },
              { :name => 'Mno', :count => 5,  :admin => false },
              { :name => 'Xyz', :count => 10, :admin => true  },
            ]}
          end

        end

        context 'customized by hash' do

          let(:customizations) do
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

          it 'should accept the legacy format for cusomizations via a hash' do

            grammar = Grammar.customize(customizations)
            parser = Parser.new(grammar.rules)
            data = Data.new(parser.parse(xml))

            data.nil_element.should == nil
            data.boolean.should == true
            data.boolean?.should == true
            data.integer_element.should == 123
            data.float_element.should == 123.456
            data.values.should == [1,2,3]
            data.symbols.should == [:flat_1, :flat_2, :flat_3]
            data.tree.branch.branch.leaf_d.should == :leaf_d

          end

        end

        context 'simulating parsing', :simulate => true do

          def simulate &block
            grammar = Grammar.customize(&block)
            parser = Parser.new(grammar.rules)
            Data.new(parser.simulate)
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
            # the inspect string is the hash inspected
            eval(obj.inspect).should == {:foo => nil, :bar => nil}
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

          it 'should add wrapper elements' do
            obj = simulate do
              wrapper(:taco, :for => ['Foo'])
              element "Foo" do
                integer
              end
            end
            obj.taco.foo.should == 0
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
                list "person"
                element "person" do
                  index :person_index, :key => :foo
                end
              end
            end
            obj.person_index.should == {}
          end

          it 'should correctly reutrn an empty hash with no rules' do
            Parser.new({}).simulate.should == {}
          end

        end

      end
    end
  end
end
