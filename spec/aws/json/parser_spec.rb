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
    describe Parser do

      let(:rules) {{
        'type' => 'structure',
        'members' => {},
      }}

      def parse(json)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Parser.to_hash(shape, json)
      end

      it 'returns an empty hash when given an empty string' do
        expect(parse('')).to eq({})
      end

      it 'returns an empty hash when the JSON is {}' do
        expect(parse('{}')).to eq({})
      end

      describe 'structures' do

        it 'symbolizes structure members' do
          rules['members'] = {
            'name' => { 'type' => 'string' },
          }
          json = '{"name":"John Doe"}'
          expect(parse(json)).to eq(name: 'John Doe')
        end

        it 'parses members using their serialized name' do
          rules['members'] = {
            'first' => { 'type' => 'string', 'serialized_name' => 'FirstName' },
            'last' => { 'type' => 'string', 'serialized_name' => 'LastName' }
          }
          json = '{"FirstName":"John", "LastName":"Doe"}'
          expect(parse(json)).to eq(first: 'John', last: 'Doe')
        end

      end

      describe 'lists' do

        it 'parses lists' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          json = '{"items":["abc", "mno", "xyz"]}'
          expect(parse(json)).to eq(items: %w(abc mno xyz))
        end

        it 'parses lists of complex members' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'name' => { 'type' => 'string' }
                }
              }
            }
          }
          json = '{"items":[{"name":"abc"},{"name":"xyz"}]}'
          expect(parse(json)).to eq(items: [{name:'abc'}, {name:'xyz'}])
        end

      end

      describe 'maps' do

        it 'parses maps as hashes (without symbolizing keys' do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'string' }
            }
          }
          json = '{"attributes":{"Size":"large","Color":"red"}}'
          expect(parse(json)).to eq(attributes: {
            'Size' => 'large',
            'Color' => 'red'
          })
        end

      end

      describe 'booleans' do

        it 'converts true/false booleans'

      end

    end
  end
end
