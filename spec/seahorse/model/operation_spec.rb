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

require 'spec_helper'

module Seahorse
  module Model
    describe Operation do
      let(:operation_hash) do
        {
          'name' => 'OperationName',
          'documentation' => 'Docstring',
          'http_method' => 'POST',
          'http_path' => '/path/to/operation',
          'input' => {
            'params' => {
              'property' => { 'type' => 'string' }
            }
          },
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

      let(:operation) { Operation.from_hash(operation_hash) }

      describe 'from_hash' do
        it 'loads from a hash' do
          expect(operation.name).to eq 'OperationName'
          expect(operation.documentation).to eq 'Docstring'
          expect(operation.http_path).to eq '/path/to/operation'
          expect(operation.http_method).to eq 'POST'
          expect(operation.input).to be_instance_of OperationInput
          expect(operation.output).to eq nil
          expect(operation.errors[0]).to be_instance_of Shapes::StringShape
        end

        it 'serializes to a hash' do
          expect(operation.to_hash).to eq(operation_hash)
        end
      end
    end
  end
end
