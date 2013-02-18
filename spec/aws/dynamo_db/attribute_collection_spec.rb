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
  class DynamoDB

    describe AttributeCollection do

      let(:config) { stub_config }

      let(:client) { config.dynamo_db_client }

      let(:table) { Table.new("MyTable", :config => config) }

      let(:item) { Item.new(table, "foo") }

      let(:attributes) { described_class.new(item) }

      let(:response) {
        double('response', :data => {
                 "Item" => {
                   "attr1" => { "S" => "one" },
                   "attr2" => { "N" => "0.12E2" },
                   "attr3" => { "NS" => ["0.12E2"] }
                 }
               })
      }

      it_should_behave_like "enumerable"

      before(:each) do
        table.hash_key = [:id, :string]
        client.stub(:get_item).and_return(response)
      end

      context '#initialize' do

        it 'should store the item' do
          attributes.item.should be(item)
        end

      end

      context '#each' do

        it 'calls get_item' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 }).
            and_return(response)
          attributes.each { |*a| }
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(hash_including(:consistent_read => true)).
            and_return(response)
          attributes.each(:consistent_read => true)
        end

        it 'passes pairs to an arity-1 block' do
          obj = Object.new
          obj.should_receive(:call).with(["attr1", "one"])
          obj.should_receive(:call).with(["attr2", BigDecimal("12")])
          obj.should_receive(:call).with(["attr3", Set[BigDecimal("12")]])
          attributes.each { |p| obj.call(p) }
        end

        it 'passes key and value to an arity-2 block' do
          obj = Object.new
          obj.should_receive(:call).with("attr1", "one")
          obj.should_receive(:call).with("attr2", BigDecimal("12"))
          obj.should_receive(:call).with("attr3", Set[BigDecimal("12")])
          attributes.each { |key, value| obj.call(key, value) }
        end

      end

      context '#each_key' do

        before(:each) { client.stub(:get_item).and_return(response) }

        it 'calls get_item' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 }).
            and_return(response)
          attributes.each_key { |k| }
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(hash_including(:consistent_read => true)).
            and_return(response)
          attributes.each_key(:consistent_read => true)
        end

        it 'yields each key' do
          obj = Object.new
          obj.should_receive(:call).with("attr1")
          obj.should_receive(:call).with("attr2")
          obj.should_receive(:call).with("attr3")
          attributes.each_key { |k| obj.call(k) }
        end

      end

      context '#each_value' do

        let(:response) {
          double('response', :data => {
                   "Item" => {
                     "attr1" => { "S" => "one" },
                     "attr2" => { "N" => "0.12E2" },
                     "attr3" => { "NS" => ["0.12E2"] }
                   }
                 })
        }

        before(:each) { client.stub(:get_item).and_return(response) }

        it 'calls get_item' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 }).
            and_return(response)
          attributes.each_value { |k| }
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(hash_including(:consistent_read => true)).
            and_return(response)
          attributes.each_value(:consistent_read => true)
        end

        it 'yields each value' do
          obj = Object.new
          obj.should_receive(:call).with("one")
          obj.should_receive(:call).with(BigDecimal("12"))
          obj.should_receive(:call).with(Set[BigDecimal("12")])
          attributes.each_value { |k| obj.call(k) }
        end

      end

      context '#[]' do

        let(:response) {
          double('response', :data => {
                   "Item" => {
                     "bla" => { "S" => "value" }
                   }
                 })
        }

        before(:each) { client.stub(:get_item).and_return(response) }

        it 'should call get_item with :attributes_to_get set to the requested attribute' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attributes_to_get => ["bla"]).
            and_return(response)
          attributes["bla"]
        end

        it 'should return the attribute value' do
          attributes["bla"].should == "value"
        end

        it 'should work with symbol attribute names' do
          client.should_receive(:get_item).
            with(hash_including(:attributes_to_get => ["bla"])).
            and_return(response)
          attributes[:bla].should == "value"
        end

      end

      context '#[]=' do

        it 'should call update_item with a single PUT update' do
          client.should_receive(:update_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attribute_updates => {
                   "bar" => {
                     :action => "PUT",
                     :value => { :s => "VALUE" }
                   }
                 })
          attributes["bar"] = "VALUE"
        end

        it 'should work for symbol attribute names' do
          client.should_receive(:update_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attribute_updates => {
                   "bar" => {
                     :action => "PUT",
                     :value => { :s => "VALUE" }
                   }
                 })
          attributes[:bar] = "VALUE"
        end

        it 'should delete the attribute if it is set to nil' do
          client.should_receive(:update_item).
            with(hash_including(:attribute_updates => {
                                  "bar" => { :action => "DELETE" }
                                }))
          attributes[:bar] = nil
        end

        it 'should return value that was set' do
          attributes.send(:[]=, :bar, "VALUE").should == "VALUE"
        end

        it 'should raise an error for an invalid value literal' do
          lambda { attributes[:bar] = ["a", 12] }.
            should raise_error(ArgumentError, /in value for attribute bar/)
        end

      end

      shared_examples_for "a DynamoDB attribute update" do

        it 'should call update_item with a PUT update per attribute' do
          client.should_receive(:update_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attribute_updates => {
                   "bar" => {
                     :action => action,
                     :value => { :ss => ["VALUE"] }
                   },
                   "baz" => {
                     :action => action,
                     :value => { :ns => [12.to_s] }
                   }
                 })
          perform_update("bar" => ["VALUE"],
                         "baz" => [12])
        end

        it 'should work for symbol attribute names' do
          client.should_receive(:update_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attribute_updates => {
                   "bar" => {
                     :action => action,
                     :value => { :ss => ["VALUE"] }
                   },
                   "baz" => {
                     :action => action,
                     :value => { :ns => [12.to_s] }
                   }
                 })
          perform_update(:bar => ["VALUE"],
                         :baz => [12])
        end

        it 'should do nothing when no attributes are passed' do
          client.should_not_receive(:update_item)
          perform_update({})
        end

        it 'should be nil by default' do
          perform_update(:bar => "VALUE").should be_nil
        end

      end

      shared_examples_for "a DynamoDB attribute update method" do

        it_should_behave_like "a DynamoDB attribute update" do
          def perform_update(options)
            attributes.send(method, options)
          end
        end

        it_should_behave_like "a DynamoDB method accepting expectations" do
          let(:client_method) { :update_item }
          def use_expectations(options)
            attributes.send(method, { :bar => "VALUE" }, options)
          end
        end

        it_should_behave_like "a DynamoDB method accepting :return" do
          let(:client_method) { :update_item }
          let(:required_args) { [{ :bar => "VALUE" }] }
          def compute_value(args, block)
            attributes.send(method, *args)
          end
        end

      end

      context '#set' do
        it_should_behave_like "a DynamoDB attribute update method" do
          let(:method) { :set }
          let(:action) { "PUT" }
        end

        it 'should delete attributes that are set to nil' do
          client.should_receive(:update_item).
            with(hash_including(:attribute_updates => {
                                  "bar" => { :action => "DELETE" },
                                  "baz" => {
                                    :action => "PUT",
                                    :value => { :s => "BAZ" }
                                  }
                                }))
          attributes.set(:bar => nil,
                         :baz => "BAZ")
        end
      end

      context '#add' do
        it_should_behave_like "a DynamoDB attribute update method" do
          let(:method) { :add }
          let(:action) { "ADD" }
        end
      end

      shared_examples_for "a DynamoDB attribute deletion" do

        it_should_behave_like "a DynamoDB attribute update" do

          let(:action) { "DELETE" }
          def perform_update(options)
            perform_delete(options)
          end

          it 'should convert single values to sets' do
            client.should_receive(:update_item).
              with(hash_including(:attribute_updates => {
                                    "bar" => {
                                      :action => "DELETE",
                                      :value => { :ss => ["VALUE"] }
                                    }
                                  }))
            perform_delete(:bar => "VALUE")
          end

        end

        context 'deleting all values of each attribute' do

          it 'should call update_item with a PUT update per attribute' do
            client.should_receive(:update_item).
              with(hash_including(:attribute_updates => {
                                    "bar" => {
                                      :action => "DELETE"
                                    },
                                    "baz" => {
                                      :action => "DELETE"
                                    }
                                  }))
            perform_delete("bar", "baz")
          end

          it 'should work for symbol attribute names' do
            client.should_receive(:update_item).
              with(hash_including(:attribute_updates => {
                                    "bar" => {
                                      :action => "DELETE"
                                    },
                                    "baz" => {
                                      :action => "DELETE"
                                    }
                                  }))
            perform_delete(:bar, :baz)
          end

          it 'should do nothing when no attributes are passed' do
            client.should_not_receive(:update_item)
            perform_delete
          end

        end

      end

      context '#delete' do

        it_should_behave_like "a DynamoDB attribute deletion" do
          def perform_delete(*args)
            attributes.delete(*args)
          end

          it_should_behave_like "a DynamoDB method accepting :return" do
            let(:client_method) { :update_item }
            let(:required_args) { [:bar] }
            def compute_value(args, block)
              perform_delete(*args)
            end

            it 'should be nil by default' do
              perform_delete(:bar).should be_nil
            end
          end

        end

      end

      context '#update' do

        it 'should raise an error if you attempt to update an attribute in two ways' do
          lambda do
            attributes.update do |u|
              u.set(:color => "green")
              u.delete(:color)
            end
          end.should raise_error(ArgumentError,
                                 "conflicting updates for attribute color")
        end

        context 'block with #set' do
          it_should_behave_like "a DynamoDB attribute update" do
            let(:action) { "PUT" }
            def perform_update(options)
              attributes.update { |u| u.set(options) }
            end
          end

          it 'should delete attributes that are set to nil' do
            client.should_receive(:update_item).
              with(hash_including(:attribute_updates => {
                                    "bar" => { :action => "DELETE" },
                                    "baz" => {
                                      :action => "PUT",
                                      :value => { :s => "BAZ" }
                                    }
                                  }))
            attributes.update do |u|
              u.set(:bar => nil,
                    :baz => "BAZ")
            end
          end
        end

        context 'block with #add' do
          it_should_behave_like "a DynamoDB attribute update" do
            let(:action) { "ADD" }
            def perform_update(options)
              attributes.update { |u| u.add(options) }
            end
          end
        end

        context 'block with #delete' do
          it_should_behave_like "a DynamoDB attribute deletion" do
            def perform_delete(*args)
              attributes.update { |u| u.delete(*args) }
            end
          end
        end

        it_should_behave_like "a DynamoDB method accepting expectations" do
          let(:client_method) { :update_item }
          def use_expectations(options)
            attributes.update(options) { |u| u.delete(:bar) }
          end
        end

        it_should_behave_like "a DynamoDB method accepting :return" do
          let(:client_method) { :update_item }
          let(:block) { lambda { |u| u.delete(:bar => "VALUE") } }
          def compute_value(args, block)
            attributes.update(*args, &block)
          end

          it 'should be nil by default' do
            attributes.update { |u| u.delete(:bar) }.should be_nil
          end

        end

      end

      context '#values_at' do

        it 'calls get_item getting only the specified attributes' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attributes_to_get => ["attr1", "attr3"]).
            and_return(response)
          attributes.values_at("attr1", "attr3")
        end

        it 'works with symbol attribute names' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :attributes_to_get => ["attr1", "attr3"]).
            and_return(response)
          attributes.values_at(:attr1, :attr3)
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(hash_including(:consistent_read => true)).
            and_return(response)
          attributes.values_at("foo", :consistent_read => true)
        end

        it 'does nothing if no attribute names are passed' do
          client.should_not_receive(:get_item)
          attributes.values_at.should == []
        end

        it 'should return the values in an array' do
          attributes.values_at("attr1", "attr3").
            should == ["one", Set[BigDecimal("12")]]
        end

        it 'should return values in the right order' do
          attributes.values_at(:attr3, :attr1).
            should == [Set[BigDecimal("12")], "one"]
        end

        it 'should return nil for values that do not exist' do
          attributes.values_at("attr1", "something").
            should == ["one", nil]
        end

      end

      context '#to_hash' do

        it 'calls get_item' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 }).
            and_return(response)
          attributes.to_hash
        end

        it 'accepts a :consistent_read option' do
          client.should_receive(:get_item).
            with(:table_name => table.name,
                 :key => {
                   :hash_key_element => { :s => "foo" }
                 },
                 :consistent_read => true).
            and_return(response)
          attributes.to_hash(:consistent_read => true)
        end

        it 'hasherishes each of the values' do
          client.stub(:get_item).and_return(response)
          attributes.to_hash.should == {
            "attr1" => "one",
            "attr2" => BigDecimal("12"),
            "attr3" => Set[BigDecimal("12")]
          }
        end

        it 'is aliased to #to_h' do # for backwards compatability
          attributes.to_h.should eq(attributes.to_hash)
        end

        context 'missing item' do

          # empty response
          let(:response) { double('response', :data => {}) }

          it 'returns an empty hash' do
            attributes.to_hash.should == {}
          end
        end

      end

    end

  end
end
