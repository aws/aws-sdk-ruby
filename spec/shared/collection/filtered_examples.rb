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

  shared_examples_for "a filtered collection" do

    context '#filter' do

      it 'returns another collection' do
        collection.filter('name','value').should be_a(described_class)
      end

      it 'returns a collection with the proper config' do
        collection.filter('name','value').config.should eq(config)
      end

      it 'returns a collection that applies the filters when enumerating' do

        client.should_receive(client_method).
          with(:abc => 'xyz', :mno => 'hjk').
          and_return(client.stub_for(client_method))

        collection.filter('abc', 'xyz').filter('mno', 'hjk').to_a

      end

    end

  end

  shared_examples_for "a chainable filter method" do |filter_method|

    # the value of the filter, as passed to the filter method
    let(:value) { double('filter-value') }

    # the name of the filter option, as passed to the client method
    let(:option_name) { filter_method }

    # the format of filter value, as passed to the client method
    let(:formatted_value) { value }

    context "##{filter_method}" do

      it 'should return a new collection' do
        collection.send(filter_method, value).should be_a(described_class)
      end

      it 'should return a collection with the proper config' do
        collection.send(filter_method, value).config.should
          eq(collection.config)
      end

      it 'applys the filter when enumerating' do

        client.should_receive(client_method).
          with(hash_including(option_name => formatted_value)).
          and_return(client.stub_for(client_method))

        collection.send(filter_method, value).each{|obj|}

      end

    end

  end

end
