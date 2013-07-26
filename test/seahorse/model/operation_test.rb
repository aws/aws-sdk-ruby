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
    describe Operation do
      def operation_hash
        @operation_hash ||= {
          'name' => 'OperationName',
          'documentation' => 'Docstring',
          'http' => {
            'uri' => '/path/to/operation',
            'method' => 'POST'
          },
          'input' => {
            'type' => 'structure',
            'members' => {
              'property' => { 'type' => 'string' }
            }
          },
          'output' => nil,
          'errors' => [
            {
              'type' => 'string'
            },
            {
              'type' => 'integer'
            }
          ]
        }
      end

      def operation
        @operation ||= Operation.from_hash(operation_hash)
      end

      describe 'from_hash' do
        it 'loads from a hash' do
          operation.name.must_equal 'OperationName'
          operation.documentation.must_equal 'Docstring'
          operation.http_uri.must_equal '/path/to/operation'
          operation.http_verb.must_equal 'POST'
          operation.input.must_be_instance_of Shapes::StructureShape
          operation.output.must_equal nil
          operation.errors[0].must_be_instance_of Shapes::StringShape
        end

        it 'serializes to a hash' do
          operation.to_hash.must_equal(operation_hash)
        end
      end
    end
  end
end
