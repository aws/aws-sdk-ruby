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
    describe DomainMetadata do

      let(:config) { stub_config }

      let(:client) { config.simple_db_client }

      let(:domain) { Domain.new('domain-name', :config => config) }

      let(:metadata) { DomainMetadata.new(domain) }

      let(:attributes) {{
        :item_count => 1,
        :item_names_size_bytes => 2,
        :attribute_name_count => 3,
        :attribute_names_size_bytes => 4,
        :attribute_value_count  => 5,
        :attribute_values_size_bytes => 6,
        :timestamp => 7,
      }}

      let(:response) { double('response', attributes) }

      it_behaves_like 'a sdb model object', Object.new

      context 'metadata' do

        before(:each) do
          client.should_receive(:domain_metadata).and_return(response)
        end

        context '#item_count' do
          it 'should get the value from the domain metadata response' do
            metadata.item_count.should == 1
          end
        end

        context '#item_names_size_bytes' do
          it 'should get the value from the domain metadata response' do
            metadata.item_names_size_bytes.should == 2
          end
        end

        context '#attribute_name_count' do
          it 'should get the value from the domain metadata response' do
            metadata.attribute_name_count.should == 3
          end
        end

        context '#attribute_names_size_bytes' do
          it 'should get the value from the domain metadata response' do
            metadata.attribute_names_size_bytes.should == 4
          end
        end

        context '#attribute_value_count' do
          it 'should get the value from the domain metadata response' do
            metadata.attribute_value_count.should == 5
          end
        end

        context '#attribute_values_size_bytes' do
          it 'should get the value from the domain metadata response' do
            metadata.attribute_values_size_bytes.should == 6
          end
        end

        context '#timestamp' do
          it 'should get the value from the domain metadata response' do
            metadata.timestamp.should == 7
          end
        end

      end

    end
  end
end
