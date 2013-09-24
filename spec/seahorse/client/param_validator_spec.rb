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

module Seahorse
  module Client
    describe ParamValidator do

      let(:rules) {{ 'type' => 'input', 'members' => {} }}

      def validate(params, expected_errors = [])
        shape = Model::Shapes::Shape.from_hash(rules)
        if expected_errors.empty?
          ParamValidator.new(shape).validate!(params)
        else
          expect {
            ParamValidator.new(shape).validate!(params)
          }.to raise_error(ArgumentError) do |error|
            match_errors(error, expected_errors)
          end
        end
      end

      def match_errors(error, expected_errors)
        expected_errors = [expected_errors] unless expected_errors.is_a?(Array)
        expected_errors.each do |expected_error|
          if String === expected_error
            expect(error.message).to include(expected_error)
          else
            expect(error.message).to match(expected_error)
          end
        end
      end

      describe 'empty rules' do

        it 'accepts an empty hash of params when rules are empty' do
          expect(validate({}))
        end

      end

      describe 'structures' do

        it 'validates nested structures' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'settings' => {
                  'type' => 'structure',
                  'members' => {}
                }
              }
            }
          }
          validate('abc', 'expected params to be a hash')
          validate({ config: 'abc' }, 'expected params[:config] to be a hash')
          validate({ config: { settings: 'abc' }}, 'expected params[:config][:settings] to be a hash')
        end

        it 'accepts hashes and objects that are hash-like' do
          validate({})
          validate(Struct.new(:config).new)
        end

        it 'raises an error when a required paramter is missing' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'required' => true }
          }
          validate({}, 'missing required parameter params[:name]')
        end

        it 'raises an error when a given parameter is unexpected' do
          validate({foo: 'bar'}, 'unexpected value at params[:foo]')
        end

        it 'accepts members that pass validation' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'required' => true }
          }
          validate(name: 'john doe')
        end

        it 'aggregates errors for members' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'required' => true }
          }
          validate({foo: 'bar'}, [
            'missing required parameter params[:name]',
            'unexpected value at params[:foo]'
          ])
        end

        it 'provides a helpful context for nested params' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'name' => { 'type' => 'string', 'required' => true }
              }
            }
          }
          validate({ config: {} },
            'missing required parameter params[:config][:name]')
        end

      end

      describe 'lists' do

        before(:each) do
          rules['members'] = {
            # list of strings
            'names' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            },
            # list of structures
            'filters' => {
              'type' => 'list',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'values' => {
                    'type' => 'list',
                    'members' => { 'type' => 'string' }
                  }
                }
              }
            }
          }
        end

        it 'accepts arrays' do
          validate(names: [])
          validate(names: %w(abc mno xyz))
        end

        it 'expects the value to be an array' do
          validate({ names: [] })
          validate({ names: 'abc' }, 'expected params[:names] to be an array')
        end

        it 'validates each member of the list' do
          validate({ filters: [{}] })
          validate({ filters: ['abc'] },
            'expected params[:filters][0] to be a hash')
          validate({ filters: [{}, 'abc'] },
            'expected params[:filters][1] to be a hash')
          validate({ filters: [{ values: 'abc' }] },
            'expected params[:filters][0][:values] to be an array')
          validate({ filters: [{ value: 'abc' }] },
            'unexpected value at params[:filters][0][:value]')
        end

      end

      describe 'maps' do

        before(:each) do
          rules['members'] = {
            'attributes' => {
              'type' => 'map',
              'keys' => { 'type' => 'string' },
              'members' => { 'type' => 'integer' }
            }
          }
        end

        it 'accepts hashes' do
          validate({ attributes: {}})
          validate({ attributes: 'abc' },
            'expected params[:attributes] to be a hash')
        end

        it 'validates map keys' do
          validate({ attributes: { 'foo' => 123 }})
          validate({ attributes: { 123 => 456 }},
            'expected params[:attributes] 123 key to be a string')
        end

        it 'validates map values' do
          validate({ attributes: { 'foo' => 123 }})
          validate({ attributes: { 'foo' => 'bar' }},
            'expected params[:attributes]["foo"] to be an integer')
        end

      end

      describe 'integers' do

        it 'accepts integers' do
          rules['members'] = { 'count' => { 'type' => 'integer' } }
          validate(count: 123)
          validate({ count: '123' }, 'expected params[:count] to be an integer')
        end

      end

      describe 'floats' do

        it 'accepts integers' do
          rules['members'] = { 'price' => { 'type' => 'float' } }
          validate(price: 123.0)
          validate({ price: 123 }, 'expected params[:price] to be a float')
        end

      end

      describe 'timestamps' do

        it 'accepts time objects' do
          rules['members'] = {
            'a' => { 'type' => 'timestamp' },
            'b' => { 'type' => 'iso8601_timestamp' },
            'c' => { 'type' => 'rfc822_timestamp' },
            'd' => { 'type' => 'unix_timestamp' },
          }
          validate(a: Time.now)
          validate(b: Time.now)
          validate(c: Time.now)
          validate(d: Time.now)
          validate({a: 12345}, 'expected params[:a] to be a Time object')
          validate({b: '2013-01-01'}, 'expected params[:b] to be a Time object')
          validate({c: DateTime.now}, 'expected params[:c] to be a Time object')
          validate({d: Date.new}, 'expected params[:d] to be a Time object')
        end

      end

      describe 'booleans' do

        it 'accepts TrueClass and FalseClass' do
          rules['members'] = { 'enabled' => { 'type' => 'boolean' } }
          validate(enabled: true)
          validate(enabled: false)
          validate({ enabled: 'true' },
            'expected params[:enabled] to be true or false')
        end

      end

      describe 'blobs' do

        it 'accepts io objects for payload members' do
          rules['payload'] = 'data'
          rules['members'] = {
            'data' => { 'type' => 'blob' }
          }
          validate(data: StringIO.new('abc'))
          validate(data: double('d', :read => 'abc', :size => 3, :rewind => 0))
          validate({ data: 'abc' },
            'expected params[:data] to be an IO object')
        end

        it 'accepts string objects for non-payload members' do
          rules['members'] = { 'data' => { 'type' => 'blob' } }
          validate(data: 'YQ==')
          validate({ data: 123 },
            'expected params[:data] to be a base64 encoded string')
        end

      end

      describe 'strings' do

        it 'accepts string objects' do
          rules['members'] = { 'name' => { 'type' => 'string' } }
          validate(name: 'john doe')
          validate({ name: 123 }, 'expected params[:name] to be a string')
        end

      end
    end
  end
end
