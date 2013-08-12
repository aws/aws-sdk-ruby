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
  module Client
    module Plugins
      describe OperationMethods do
        let(:client_class) do
          Client::Base.define api: {
            'plugins' => [DummySendPlugin],
            'operations' => {
              'operation1' => { 'name' => 'operation1' },
              'operation2' => { 'name' => 'operation2' },
              'operation3' => { 'name' => 'operation3' }
            }
          }
        end

        let(:client) { client_class.new endpoint: 'localhost' }

        let(:operations) { %w(operation1 operation2 operation3) }

        it 'adds methods for every operation in the API model' do
          expect(client.methods).to include(*operations.map(&:to_sym))
        end

        it 'sets up the method to call build_request and sends it' do
          expect(client).to receive(:build_request).
            with('operation1', param: 'X').and_call_original
          expect(client.operation1(param: 'X').data).to eq(result: 'success')
        end

        it 'can be removed from client' do
          next_client_class = Class.new(client_class)
          next_client_class.remove_plugin OperationMethods
          client = next_client_class.new

          expect(client.methods).to_not include(*operations.map(&:to_sym))
          expect { client.operation1 }.to raise_error(NoMethodError)
        end

        it 'defines a helper that returns the list of valid operation names' do
          expect(client.operation_names).to eq(operations)
        end

        it 'only registers methods on the client class once' do
          expect(client_class).to receive(:define_method).
            with(:operation_names).exactly(1).times
          operations.each do |operation_name|
            expect(client_class).to receive(:define_method).
              with(operation_name).exactly(1).times
          end
          client_class.new(endpoint: 'localhost')
        end

      end
    end
  end
end
