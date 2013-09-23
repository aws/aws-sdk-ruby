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
          expect(validate({})).to be_kind_of(Hash)
        end

      end

      describe 'structures' do

        it 'raises an error when a required paramter is missing' do
          rules['members'] = {
            'name' => { 'type' => 'string', 'required' => true }
          }
          validate({}, 'missing required parameter params[:name]')
        end

        it 'raises an error when a given parameter is unexpected' do
          validate({foo: 'bar'}, 'unexpected parameter params[:foo]')
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
            'unexpected parameter params[:foo]'
          ])
        end

        it 'validates nested structures'

        it 'provides a helpful context for nested params'

      end

      describe 'lists' do

        it 'expects the value to be an array'

        it 'validates each member of the list'

      end

      describe 'maps' do

        it 'expects maps to be hashes'

        it 'accepts string keys'

        it 'validates each map entry'

      end

      describe 'integers' do

        it 'accepts integers'

        it 'accepts integer strings'

        it 'accepts objects that respond to #to_int'

      end

      describe 'floats' do

        it 'accepts integers'

        it 'accepts floats'

        it 'accepts float strings'

        it 'accepts objects that respond to #to_float'

      end

      describe 'timestamps' do

        it 'accepts date objects'

        it 'accepts datetime objects'

        it 'accepts time objects'

        it 'accepts integers (as unix timestamps)'

        it 'strings parseable by Time.parse'

        it 'accepts objects that respond to #to_time'

      end

      describe 'booleans' do

        it 'accepts TrueClass'

        it 'accepts FalseClass'

      end

      describe 'blobs' do

        it 'accepts strings'

        it 'accepts pathname objects'

        it 'accepts File objects'

        it 'accept Tempfile objects'

        it 'accepts objects that respond to #read, #rewind and #size'

        it 'tracks a list of opened/managed files to close after a response'

      end

      describe 'strings' do

        it 'accepts strings'

        it 'accepts objects that respond to #to_str'

      end
    end
  end
end
