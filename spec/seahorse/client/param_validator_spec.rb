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

      def validate(params)
        shape = Model::Shapes::Shape.from_hash(rules)
        ParamValidator.new(shape).validate!(params)
      end

      describe 'empty rules' do

        it 'accepts an empty hash of params when rules are empty'

        it 'returns an empty hash' do
          expect(validate({})).to be_kind_of(Hash)
        end

        it 'rejects params when given'

      end

      describe 'structures' do

        it 'raises an error when a required paramter is missing'

        it 'raises an error when a given parameter is unexpected'

        it 'raises an error when a given parameter fails validation'

        it 'aggregates errors for members'

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
