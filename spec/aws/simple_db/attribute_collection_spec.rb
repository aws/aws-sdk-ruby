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
    describe AttributeCollection do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:item) { Item.new(domain, 'item-name') }

      let(:attributes) { AttributeCollection.new(item) }

      it_behaves_like 'a sdb model object', 'item'

      it_behaves_like 'enumerable'

      context '#initialize' do

        it 'requires an item' do
          lambda { AttributeCollection.new }.should raise_error(ArgumentError)
        end

        it 'accepts an item' do
          lambda { AttributeCollection.new(item) }.should_not raise_error
        end

      end

      context '#item' do

        it 'returns the item passed to #initialize' do
          attributes.item.should == item
        end

      end

      context '#to_h' do

        let(:response) {
          double('response', :attributes => [
            double('attr1', :name => 'foo', :value => 'abc'),
            double('attr1', :name => 'foo', :value => 'xyz'),
            double('attr1', :name => 'bar', :value => '123'),
          ])
        }

        it 'hasherishes each of the values' do
          client.should_receive(:get_attributes).and_return(response)
          attributes.to_h.should == { 'foo' => %w(abc xyz), 'bar' => %w(123) }
        end

        it_behaves_like('accepts :consistent_read option', lambda{}) do
          let(:object) { attributes }
          let(:method) { :to_h }
          let(:client_method) { :get_attributes }
        end

      end

      context '#[]' do

        it 'returns an attribute' do
          attributes['color'].should be_an(Attribute)
        end

        it 'returns an attribute with the correct item' do
          attributes['color'].item.should == item
        end

        it 'returns an attribute with the correct name' do
          attributes['color'].name.should == 'color'
        end

        it 'returns an attribute with the correct config' do
          attributes['color'].config.should == config
        end

        it 'stringifies the name' do
          attributes[:color].name.should == 'color'
        end

      end

      context '#[]=' do

        it 'calls set on the attribute named' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => true },
                { :name => 'colors', :value => 'green', :replace => true },
              ]))
          attributes['colors'] = 'red', 'green'
        end

      end

      context "#each_value" do

        let(:response) { double('response', :attributes => []) }

        it 'calls get_attributes' do
          client.should_receive(:get_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name)).
            and_return(response)
          attributes.each_value{|attr_name, attr_value|}
        end

        it 'yields once for each attribute value' do
          response.stub(:attributes).and_return([
            double('attr1', :name => 'foo', :value => 'bar1'),
            double('attr1', :name => 'foo', :value => 'bar2'),
            double('attr1', :name => 'abc', :value => 'xyz'),
          ])
          client.should_receive(:get_attributes).and_return(response)

          yielded = []
          attributes.each_value do |attr_name, attr_value|
            yielded << [attr_name, attr_value]
          end

          yielded.should == [
            ['foo', 'bar1'],
            ['foo', 'bar2'],
            ['abc', 'xyz'],
          ]

        end

      end

      context '#each' do

        let(:response) { double('response', :attributes => []) }

        it_behaves_like('accepts :consistent_read option', lambda{|attr|}) do
          let(:object) { attributes }
          let(:method) { :each }
          let(:client_method) { :get_attributes }
        end

        it 'calls get_attributes' do
          client.should_receive(:get_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name)).
            and_return(response)
          attributes.each{|attribute|}
        end

        it 'yields attribute objects' do

          response.stub(:attributes).and_return([
            double('attr1', :name => 'foo', :value => 'bar1'),
            double('attr1', :name => 'foo', :value => 'bar2'),
            double('attr1', :name => 'abc', :value => 'xyz'),
          ])

          client.should_receive(:get_attributes).and_return(response)

          yielded_names = []
          attributes.each do |attribute|
            yielded_names << attribute.name
          end
          yielded_names.should == %w(foo abc)

        end

      end

      context '#put' do

        context 'empty hash' do

          it 'does nothing' do
            client.should_not_receive(:put_attributes)
            attributes.put({})
          end

        end

        it 'calls put_attributes' do

          client.should_receive(:put_attributes).with do |hash|
            attr = hash[:attributes]
            attr.length.should == 3
            attr.should include({ :value => "4", :name => "wheels", :replace => true })
            attr.should include({ :value => "red", :name => "colors", :replace => false })
            attr.should include({ :value => "blue", :name => "colors", :replace => false })
          end

          attributes.put(
            :add => { 'colors' => ['red', 'blue'] },
            :replace => { 'wheels' => '4' }
          )

        end

        it_should_behave_like "sdb expect conditions" do
          def should_expect(conditions)
            client.should_receive(:put_attributes).with do |hash|
              attr = hash[:attributes]
              attr.length.should == 3
              attr.should include({ :value => "4", :name => "wheels", :replace => true })
              attr.should include({ :value => "red", :name => "colors", :replace => false })
              attr.should include({ :value => "blue", :name => "colors", :replace => false })
              hash[:expected].should == conditions
            end
          end
          def do_with_condition(condition)
            attributes.put({
                             :add => { 'colors' => ['red', 'blue'] },
                             :replace => { 'wheels' => '4' }
                           }.merge(condition))
          end
        end

      end

      context '#set' do

        it 'is an alias for replace' do
          attributes.method(:set).should == attributes.method(:replace)
        end

      end

      context '#replace' do

        context 'empty hash' do

          it 'does nothing' do
            client.should_not_receive(:put_attributes)
            attributes.replace({})
          end

        end

        it 'calls put_attributes' do

          client.should_receive(:put_attributes).with do |hash|
            attr = hash[:attributes]
            attr.length.should == 3
            attr.should include({ :value => "4", :name => "wheels", :replace => true })
            attr.should include({ :value => "red", :name => "colors", :replace => true })
            attr.should include({ :value => "blue", :name => "colors", :replace => true })
          end

          attributes.replace('colors' => ['red', 'blue'], 'wheels' => '4')

        end

        it 'handles string values with newlines' do

          client.should_receive(:put_attributes).with do |opts|
            opts[:attributes].map { |att| att[:value] }.
              should include("red\r\nblue")
          end

          attributes.replace('colors' => "red\r\nblue", 'wheels' => '4')

        end

        it_should_behave_like "sdb expect conditions" do
          def should_expect(conditions)
            client.should_receive(:put_attributes).with do |hash|
              attr = hash[:attributes]
              attr.length.should == 3
              attr.should include({ :value => "4",
                                    :name => "wheels",
                                    :replace => true })
              attr.should include({ :value => "red",
                                    :name => "colors",
                                    :replace => true })
              attr.should include({ :value => "blue",
                                    :name => "colors",
                                    :replace => true })
              hash[:expected].should == conditions
            end
          end
          def do_with_condition(condition)
            attributes.set({
                             'colors' => ['red', 'blue'],
                             'wheels' => '4'
                           }.merge(condition))
          end
        end

      end

      context '#add' do

        context 'empty hash' do

          it 'does nothing' do
            client.should_not_receive(:put_attributes)
            attributes.add({})
          end

        end

        it 'calls put_attributes' do

          client.should_receive(:put_attributes).with do |hash|
            attr = hash[:attributes]
            attr.length.should == 3
            attr.should include({ :value => "4", :name => "wheels", :replace => false })
            attr.should include({ :value => "red", :name => "colors", :replace => false })
            attr.should include({ :value => "blue", :name => "colors", :replace => false })
          end

          attributes.add('colors' => ['red', 'blue'], 'wheels' => '4')

        end

        it_should_behave_like "sdb expect conditions" do
          def should_expect(conditions)
            client.should_receive(:put_attributes).with do |hash|
              attr = hash[:attributes]
              attr.length.should == 3
              attr.should include({ :value => "4",
                                    :name => "wheels",
                                    :replace => false })
              attr.should include({ :value => "red",
                                    :name => "colors",
                                    :replace => false })
              attr.should include({ :value => "blue",
                                    :name => "colors",
                                    :replace => false })
              hash[:expected].should == conditions
            end
          end
          def do_with_condition(condition)
            attributes.add({
                             'colors' => ['red', 'blue'],
                             'wheels' => '4'
                           }.merge(condition))
          end
        end

      end

      context '#delete' do

        def should_delete(opts)
          client.should_receive(:delete_attributes).
            with({
                   :domain_name => "domain-name",
                   :item_name => "item-name"
                 }.merge(opts))
        end

        it 'returns nil' do
          attributes.delete.should == nil
        end

        context 'no arguments' do

          it 'does nothing' do
            client.should_not_receive(:delete_attributes)
            attributes.delete
          end

        end

        context 'attribute names' do

          it 'calls delete_attributes' do
            should_delete(:attributes => [{ :name => 'colors' }])
            attributes.delete('colors')
          end

          it 'accepts symbol attribute names' do
            should_delete(:attributes => [{ :name => 'colors' }])
            attributes.delete(:colors)
          end

          it 'accepts a list of names' do
            should_delete(:attributes => [{ :name => 'colors' },
                                          { :name => 'size' }])
            attributes.delete('colors', 'size')
          end

          it 'accepts an array of names' do
            should_delete(:attributes => [{ :name => 'colors' },
                                          { :name => 'size' }])
            attributes.delete(['colors', 'size'])
          end

          it_should_behave_like "sdb expect conditions" do
            def should_expect(conditions)
              should_delete({
                              :attributes => [{ :name => 'colors' }]
                            }.merge(:expected => conditions))
            end
            def do_with_condition(condition)
              attributes.delete(:colors, condition)
            end
          end

        end

        context 'attribute values' do

          it 'calls delete_attributes' do
            should_delete(:attributes => [{ :name => 'colors',
                                            :value => 'red' }])
            attributes.delete('colors' => 'red')
          end

          it 'accepts symbol keys' do
            should_delete(:attributes => [{ :name => 'colors',
                                            :value => 'red' }])
            attributes.delete(:colors => 'red')
          end

          it 'accepts multiple values' do
            should_delete(:attributes => [{ :name => 'colors',
                                            :value => 'red' },
                                          { :name => 'colors',
                                            :value => 'blue' }])
            attributes.delete(:colors => ['red', 'blue'])
          end

          it 'ignores empty lists of values' do
            should_delete(:attributes => [{ :name => 'colors',
                                            :value => 'blue' }])
            attributes.delete(:colors => 'blue',
                              :ignored => [])
          end

          it 'accepts the special value :all' do
            should_delete(:attributes => [{ :name => 'colors' }])
            attributes.delete(:colors => :all)
          end

          it_should_behave_like "sdb expect conditions" do
            def should_expect(conditions)
              should_delete({
                              :attributes => [{ :name => 'colors',
                                                :value => 'red' }]
                            }.merge(:expected => conditions))
            end
            def do_with_condition(condition)
              attributes.delete({
                                  :colors => 'red'
                                }.merge(condition))
            end
          end

        end

      end

    end
  end
end
