# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'test_helper'

module Seahorse
  module Model
    describe LazyOperationHash do
      def hash(raw = {})
        LazyOperationHash.new(raw)
      end

      describe '#initialize' do
        it 'clones raw data' do
          hash = {'a' => {'name' => 'op'}}
          lazy = LazyOperationHash.new(hash)
          lazy.load!
          hash.must_equal 'a' => {'name' => 'op'}
        end
      end

      describe '#[]' do
        it 'parses data when accessed' do
          ast = hash('operation' => {'name' => 'operation'})
          op = ast['operation']
          op.name.must_equal('operation')
        end

        it 'caches data when accessed first time' do
          ast = hash('operation' => {'name' => 'operation'})
          ast['operation'].must_be_same_as(ast['operation'])
        end

        it 'allows access by Symbol name' do
          ast = hash('operation' => {'name' => 'operation'})
          ast[:operation].name.must_equal('operation')
        end
      end

      describe '#[]=' do
        it 'sets value and removes raw inner data' do
          ast = hash
          ast[:operation] = 'VALUE'
          ast[:operation].must_equal 'VALUE'
        end
      end

      describe '#load!' do
        it 'loads all data' do
          ast = hash('op1' => {'name' => 'op1'}, 'op2' => {'name' => 'op2'})
          ast.load!
          ast['op1'].name.must_equal('op1')
          ast['op2'].name.must_equal('op2')
        end
      end
    end
  end
end
