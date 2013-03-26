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
    shared_examples_for("shardable") do

      context 'shard_name' do

        it 'defaults to the name of the class' do
          klass.shard_name.should == klass.name
        end

      end

      context 'set_shard_name' do

        it 'changes the default shard name for the class' do
          klass.set_shard_name 'products-1'
          klass.shard_name.should == 'products-1'
        end

        it 'is aliased to shard_name=' do
          klass.shard_name = 'Products'
          klass.shard_name.should == 'Products'
        end

        it 'is aliased to set_domain_name for backwards compatability' do
          klass.set_domain_name 'Products'
          klass.shard_name.should == 'Products'
        end

      end

      context 'constructing a record from a shard' do

        it 'returns a new object with the correct shard name' do
          obj = klass.new
          obj.shard.should == klass.shard_name
        end

        it 'accepts a shard name via klass.new' do
          klass.new(:shard => 'abc').shard.should == 'abc'
          klass.new('shard' => 'xyz').shard.should == 'xyz'
          # for backwards compatability
          klass.new(:domain => 'mno').shard.should == 'mno'
          klass.new('domain' => 'ijk').shard.should == 'ijk'
        end

        it 'accepts a shard name via klass.shard("shard-name").new' do
          klass.shard('abc').new.shard.should == 'abc'
          # for backwards compatability
          klass.domain('xyz').new.domain.should == 'xyz'
        end

      end

    end
  end
end
