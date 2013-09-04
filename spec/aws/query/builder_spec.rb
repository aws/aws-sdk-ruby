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

module Aws
  module Query
    describe Builder do

      let(:rules) {{
        'type' => 'input',
        'members' => {}
      }}

      def query_params(params = {})
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Builder.to_query_params(shape, params).map do |param|
          [param.name, param.value]
        end
      end

      describe '#to_query_params' do

        it 'returns a param list' do
          list = Builder.to_query_params(rules, {})
          expect(list).to be_kind_of(ParamList)
        end

        describe 'structures' do

          it 'returns an empty list when there are no members' do
            expect(query_params).to be_empty
          end

          it 'returns an empty list when there are no params' do
            rules['members'] = { 'name' => { 'type' => 'string' } }
            expect(query_params({})).to be_empty
          end

          it 'serializes params by name' do
            rules['members'] = {
              'name' => { 'type' => 'string' },
              'age' => { 'type' => 'integer' }
            }
            expect(query_params(name: 'John', age: 40)).to eq([
              ['age', '40'],
              ['name', 'John'],
            ])
          end

          it 'observes serialized name properties' do
            rules['members'] = {
              'name' => { 'type' => 'string', 'serialized_name' => 'NAME' },
              'age' => { 'type' => 'integer', 'serialized_name' => 'AGE' }
            }
            expect(query_params(name: 'John', age: 40)).to eq([
              ['AGE', '40'],
              ['NAME', 'John'],
            ])
          end

          it 'serializes nested params' do
            rules['members'] = {
              'name' => { 'type' => 'string' },
              'config' => {
                'type' => 'structure',
                'members' => { 'enabled' => { 'type' => 'boolean' }
                }
              }
            }
            params = { name: 'John', config: { enabled: true } }
            expect(query_params(params)).to eq([
              ['config.enabled', 'true'],
              ['name', 'John'],
            ])
          end

        end

        describe 'flattened lists' do

          it 'numbers list members starting at 1' do
            rules['members'] = {
              'items' => {
                'type' => 'list',
                'metadata' => { 'flattened' => true },
                'members' => { 'type' => 'string' }
              }
            }
            expect(query_params(items: %w(abc mno xyz))).to eq([
              ['items.1', 'abc'],
              ['items.2', 'mno'],
              ['items.3', 'xyz'],
            ])
          end

        end

        describe 'non-flattened lists' do
        end

        describe 'flattened maps' do
        end

        describe 'non-flattened maps' do
        end

        describe 'scalars' do
        end

      end
    end
  end
end
