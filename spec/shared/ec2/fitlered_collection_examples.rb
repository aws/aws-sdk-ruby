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
  class EC2

    shared_examples_for 'a filtered ec2 collection' do

      context '#filter' do

        it 'returns a new collection' do
          new_collection = collection.filter('foo', 'bar')
          new_collection.should be_a(described_class)
          new_collection.config.should == collection.config
          new_collection.should_not == collection
        end

      end

      context 'filtered enumeration' do

        it 'accepts multiple values for a single filter name' do
          client.should_receive(client_method).
            with(:filters => [{ :name => 'filter-name', :values => %w(abc xyz) }])
          collection.filter('filter-name', 'abc', 'xyz').each{|obj|}
        end

        it 'should be chainable' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'foo', :values => %w(bar) },
              { :name => 'abc', :values => %w(xyz) },
            ])
          collection.filter('foo', 'bar').filter('abc', 'xyz').each{|obj|}
        end

        it 'allows addding a filter name more than once' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'foo', :values => %w(bar1) },
              { :name => 'foo', :values => %w(bar2) },
            ])
          collection.filter('foo', 'bar1').filter('foo', 'bar2').each{|obj|}
        end

      end

    end

  end
end
