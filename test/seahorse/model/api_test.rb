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
    describe Api do
      def operation_hash
        @operation_hash ||= {
          'name' => 'OperationName',
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
          'output' => nil
        }
      end

      def api_hash
        @api_hash ||= {
          'metadata' => {
            'key' => 'value'
          },
          'documentation' => 'Docstring',
          'operations' => {
            'OperationName' => operation_hash
          }
        }
      end

      def api
        @api ||= Api.from_hash(api_hash)
      end

      describe 'from_hash' do
        it 'loads from a hash' do
          api.metadata['key'].must_equal 'value'
          api.documentation.must_equal 'Docstring'
          api.operations[:OperationName].to_hash.must_equal operation_hash
          api.operations['OperationName'].to_hash.must_equal operation_hash
        end

        it 'serializes to a hash' do
          api.to_hash.must_equal(api_hash)
        end
      end

      describe '#validate!' do
        it 'fails to validate operations when an invalid operation is loaded' do
          api = Api.from_hash 'operations' => {
            'operation_name' => {
              'INVALID_KEY' => 'value'
            }
          }

          err = lambda { api.validate! }.must_raise(RuntimeError)
          err.message.must_include 'Unrecognized properties'
        end
      end
    end
  end
end
