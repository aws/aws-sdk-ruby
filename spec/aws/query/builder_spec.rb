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

      def list(params = {})
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Builder.to_query_params(shape, params)
      end

      describe '#to_query_params' do

        it 'returns a param list' do
          expect(list).to be_kind_of(ParamList)
        end

        describe 'structures' do

          it 'serializes params by name' do
            rules['members'] = {
              'name' => { 'type' => 'string' },
              'age' => { 'type' => 'integer' }
            }
            expect(list(name: 'John', age: 40).to_s).to eq(<<-QS.strip)
              age=40&name=John
            QS
          end

        end

        describe 'flattened lists' do
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
