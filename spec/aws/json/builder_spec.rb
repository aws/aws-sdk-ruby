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
  module Json
    describe Builder do

      let(:rules) {{
        'type' => 'structure',
        'serialized_name' => 'xml',
        'members' => {},
      }}

      def json(params)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Builder.to_json(shape, params)
      end

      describe 'structures' do

        it 'returns an empty xml doc when there are no params' do
          expect(json({})).to eq('{}')
        end

        it 'omits params that are not in the rules' do
          expect(json(abc: 'xyz')).to eq('{}')
        end

        it 'observes serialized name properties' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'serialized_name' => 'FullName' }
          }
          expect(json(name: 'John Doe')).to eq('{"FullName":"John Doe"}')
        end

        it 'serializes nested structures' do
          rules['members'] = {
            'abc' => {
              'type' => 'structure',
              'members' => {
                'mno' => { 'type' => 'string' }
              }
            }
          }
          expect(json(abc: { mno: 'xyz' })).to eq('{"abc":{"mno":"xyz"}}')
        end

      end

      describe 'lists' do

        it 'serializes lists'

        it 'serializes comples list members'

      end

      describe 'scalars' do

        it 'serializes integers'

        it 'serializes floats'

        it 'serializes booleans'

        it 'serializes timestamps as is8601 strings by default'

        it 'can serializes timestamps as rfc8622 strings'

        it 'can serializes timestamps as unix timestamps'

      end
    end
  end
end
