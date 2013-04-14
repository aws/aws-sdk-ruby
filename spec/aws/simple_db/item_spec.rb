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
    describe Item do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:item) { Item.new(domain, 'car') }

      it_behaves_like 'a sdb model object', 'domain', 'name'

      context '#initialize' do

        it 'requires a domain and name' do
          lambda { Item.new }.should raise_error(ArgumentError)
        end

        it 'accepts a domain and name' do
          lambda { Item.new(domain, 'car') }.should_not raise_error
        end

      end

      context '#domain' do

        it 'returns the domain passed to #initialize' do
          item.domain.should == domain
        end
      end

      context '#name' do

        it 'returns the proper name' do
          item.name.should == 'car'
        end

      end

      context '#attributes' do

        it 'returns an attributes collection' do
          item.attributes.should be_an(AttributeCollection)
        end

      end

      context '#delete' do

        it 'calls delete_attributes' do
          client.should_receive(:delete_attributes).
            with(:domain_name => domain.name, :item_name => item.name)
          item.delete
        end

      end

      context '#data' do

        let(:resp) { client.stub_for(:get_attributes) }

        before(:each) do
          resp.data[:attributes] = [
            { :name => "foo", :value => "1" },
            { :name => "foo", :value => "2" },
            { :name => "bar", :value => "baz" },
          ]
        end

        it 'calls get_attributes' do
          client.should_receive(:get_attributes).with(
            :domain_name => domain.name,
            :item_name => item.name,
            :consistent_read => false
          ).and_return(resp)
          item.data
        end

        it 'passes through :consistent_read' do
          client.should_receive(:get_attributes).with(
            :domain_name => domain.name,
            :item_name => item.name,
            :consistent_read => true
          ).and_return(resp)
          item.data(:consistent_read => true)
        end

        it 'obeys consistent read blocks' do

          client.should_receive(:get_attributes).with(
            :domain_name => domain.name,
            :item_name => item.name,
            :consistent_read => true
          ).and_return(resp)

          AWS::SimpleDB.consistent_reads do
            item.data
          end

        end

        it 'uses the configured consistent read when not in options' do
          config.stub(:simple_db_consistent_reads?).and_return(true)
          client.should_receive(:get_attributes).with(
            :domain_name => domain.name,
            :item_name => item.name,
            :consistent_read => true
          ).and_return(resp)
          item.data
        end

        it 'returns an ItemData' do
          item.data.should be_an(ItemData)
        end

        it 'sets the name' do
          item.data.name.should == item.name
        end

        it 'sets the attributes' do
          item.data.attributes.should == {
            "foo" => %w(1 2),
            "bar" => ["baz"]
          }
        end

        it 'sets the domain' do
          item.data.domain.should == item.domain
        end

      end

    end
  end
end
