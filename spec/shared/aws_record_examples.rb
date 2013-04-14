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

    shared_examples_for 'aws record' do

      let(:klass) { Class.new(Record::Base) }

      let(:sdb_item) { double('sdb-item') }

      let(:sdb_data) { double('sdb-item-data', :attributes => {}) }

      let(:sdb_attributes) { double('sdb-item-attributes').as_null_object }

      before(:each) do

        klass.stub(:name).and_return('ExampleModel')

        klass.stub_chain(:sdb_domain, :items, :[]).and_return(sdb_item)

        sdb_item.stub(:data).and_return(sdb_data)

        sdb_item.stub(:attributes).and_return(sdb_attributes)

      end

      def item_with_attributes attributes

        attributes = Core::IndifferentHash.new(attributes)

        item_id = attributes.delete('id') || 'item-id'

        sdb_data_hash = {}

        attributes.each_pair do |attr_name, attr_value|

          values = AWS::Record.as_array(attr_value)
          sdb_data_hash[attr_name.to_s] = values

          attr_macro = case values.first
          when String then :string_attr
          when Integer then :integer_attr
          else raise 'unsupported attr type'
          end

          klass.send(attr_macro, attr_name, :set => attr_value.is_a?(Array))

        end

        sdb_data.stub(:attributes).and_return(sdb_data_hash)

        obj = klass['item-id']
        obj.instance_variable_set('@_id', item_id)
        obj

      end

    end

  end
end
