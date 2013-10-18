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
    describe Attribute do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:item) { Item.new(domain, 'item-name') }

      let(:attribute) { Attribute.new(item, 'colors') }

      it_behaves_like 'a sdb model object', 'item', 'name'

      it_behaves_like 'enumerable'

      context '#initialize' do

        it 'requires a item and name' do
          lambda { Attribute.new }.should raise_error(ArgumentError)
        end

        it 'accepts a item and name' do
          lambda { Attribute.new(item, 'colors') }.should_not raise_error
        end

      end

      context '#item' do

        it 'returns the item passed to #initialize' do
          attribute.item.should == item
        end
      end

      context '#name' do

        it 'returns the proper name' do
          attribute.name.should == 'colors'
        end

      end

      context '#values' do

        let(:attributes) {[
          double('attr1', :name => 'colors', :value => 'green'),
          double('attr1', :name => 'colors', :value => 'red'),
        ]}

        let(:response) { double('response', :attributes => attributes) }

        it_behaves_like('accepts :consistent_read option', lambda{}) do
          let(:object) { attribute }
          let(:method) { :values }
          let(:client_method) { :get_attributes }
        end

        it 'returns all attribute values as an array' do
          client.should_receive(:get_attributes).and_return(response)
          attribute.values.should == %w(green red)
        end

      end

      context '#each' do

        let(:attributes) {[
          double('attr1', :name => 'colors', :value => 'green'),
          double('attr1', :name => 'colors', :value => 'red'),
        ]}

        let(:response) { double('response', :attributes => attributes) }

        it_behaves_like('accepts :consistent_read option', lambda{|value|}) do
          let(:object) { attribute }
          let(:method) { :each }
          let(:client_method) { :get_attributes }
        end

        it 'calls get_attributes' do
          client.should_receive(:get_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attribute_names => ['colors'])).
            and_return(response)
          attribute.each{|value|}
        end

        it 'yields the response values' do
          client.stub(:get_attributes).and_return(response)
          yielded_values = []
          attribute.each{|value| yielded_values << value }
          yielded_values.should == ['green', 'red']
        end

      end

      context '#add' do

        it 'should call put_attributes' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => false },
              ]))
          attribute.add('red')
        end

        it 'should accept multiple values as a list' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => false },
                { :name => 'colors', :value => 'green', :replace => false },
              ]))
          attribute.add('red', 'green')
        end

        it 'should accept multiple values as an array' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => false },
                { :name => 'colors', :value => 'green', :replace => false },
              ]))
          attribute.add(['red', 'green'])
        end

        it 'should have an alias of <<' do
          attribute.method(:add).should == attribute.method(:<<)
        end

        it_should_behave_like "sdb expect conditions" do
          def should_expect(conditions)
            client.should_receive(:put_attributes).
              with(hash_including(:domain_name => domain.name,
                                  :item_name => item.name,
                                  :attributes =>
                                  [{ :name => 'colors',
                                     :value => 'red',
                                     :replace => false },
                                   { :name => 'colors',
                                     :value => 'green',
                                     :replace => false }],
                                  :expected => conditions))
          end
          def do_with_condition(condition)
            attribute.add('red', 'green', condition)
          end
        end

      end

      context '#set' do

        it 'should call put_attributes' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => true },
              ]))
          attribute.set('red')
        end

        it 'should accept multiple values as a list' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => true },
                { :name => 'colors', :value => 'green', :replace => true },
              ]))
          attribute.set('red', 'green')
        end

        it 'should accept multiple values as an array' do
          client.should_receive(:put_attributes).
            with(hash_including(
              :domain_name => domain.name,
              :item_name => item.name,
              :attributes => [
                { :name => 'colors', :value => 'red', :replace => true },
                { :name => 'colors', :value => 'green', :replace => true },
              ]))
          attribute.set(['red', 'green'])
        end

        it_should_behave_like "sdb expect conditions" do
          def should_expect(conditions)
            client.should_receive(:put_attributes).
              with(hash_including(:domain_name => domain.name,
                                  :item_name => item.name,
                                  :attributes =>
                                  [{ :name => 'colors',
                                     :value => 'red',
                                     :replace => true },
                                   { :name => 'colors',
                                     :value => 'green',
                                     :replace => true }],
                                  :expected => conditions))
          end
          def do_with_condition(condition)
            attribute.set('red', 'green', condition)
          end
        end

      end

      context '#delete' do

        context 'with no positional arguments' do

          it 'should delete all values of the attribute' do
            client.should_receive(:delete_attributes).
              with(:domain_name => domain.name,
                   :item_name => item.name,
                   :attributes => [{ :name => 'colors' }])
            attribute.delete
          end

          it_should_behave_like "sdb expect conditions" do
            def should_expect(conditions)
            client.should_receive(:delete_attributes).
              with(:domain_name => domain.name,
                   :item_name => item.name,
                   :attributes => [{ :name => 'colors' }],
                   :expected => conditions)
            end
            def do_with_condition(condition)
              attribute.delete(condition)
            end
          end

        end

        context 'with positional arguments' do

          it 'should delete specific values of the attribute' do
            client.should_receive(:delete_attributes).
              with(:domain_name => domain.name,
                   :item_name => item.name,
                   :attributes => [{ :name => 'colors',
                                     :value => 'red' },
                                   { :name => 'colors',
                                     :value => 'blue' }])
            attribute.delete('red', 'blue')
          end

          it 'should accept an array' do
            client.should_receive(:delete_attributes).
              with(:domain_name => domain.name,
                   :item_name => item.name,
                   :attributes => [{ :name => 'colors',
                                     :value => 'red' },
                                   { :name => 'colors',
                                     :value => 'blue' }])
            attribute.delete(['red', 'blue'])
          end

          it_should_behave_like "sdb expect conditions" do
            def should_expect(conditions)
              client.should_receive(:delete_attributes).
                with(:domain_name => domain.name,
                     :item_name => item.name,
                     :attributes => [{ :name => 'colors',
                                       :value => 'red' },
                                     { :name => 'colors',
                                       :value => 'blue' }],
                     :expected => conditions)
            end
            def do_with_condition(condition)
              attribute.delete('red', 'blue', condition)
            end
          end

        end

      end

    end
  end
end
