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

    shared_examples_for 'a tagged ec2 collection' do

      context '#tagged' do

        it 'filters by tag name' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-key', :values => %w(foo)},
            ])
          collection.tagged('foo').each{|obj|}
        end

        it 'can be chained' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-key', :values => %w(foo)},
              { :name => 'tag-key', :values => %w(bar)},
            ])
          collection.tagged('foo').tagged('bar').each{|obj|}
        end

        it 'accepts values' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-key', :values => %w(foo)},
              { :name => 'tag-key', :values => %w(bar)},
            ])
          collection.tagged('foo').tagged('bar').each{|obj|}
        end

        it 'also accepts multiple tag names' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-key', :values => %w(foo bar)},
            ])
          collection.tagged('foo', 'bar').each{|obj|}
        end

      end

      context '#tagged_values' do

        it 'filters by tag name' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-value', :values => %w(foo)},
            ])
          collection.tagged_values('foo').each{|obj|}
        end

        it 'can be chained' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-value', :values => %w(foo)},
              { :name => 'tag-value', :values => %w(bar)},
            ])
          collection.tagged_values('foo').tagged_values('bar').each{|obj|}
        end

        it 'accepts values' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-value', :values => %w(foo)},
              { :name => 'tag-value', :values => %w(bar)},
            ])
          collection.tagged_values('foo').tagged_values('bar').each{|obj|}
        end

        it 'also accepts multiple tag names' do
          client.should_receive(client_method).
            with(:filters => [
              { :name => 'tag-value', :values => %w(foo bar)},
            ])
          collection.tagged_values('foo', 'bar').each{|obj|}
        end

      end
    end
  end
end
