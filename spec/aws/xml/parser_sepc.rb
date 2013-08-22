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
  module Xml
    describe Parser do

      let(:rules) {{
        'type' => 'structure',
        'members' => {},
      }}

      def data(xml)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Parser.to_hash(shape, xml)
      end

      it 'returns an empty hash when the XML is empty' do
        expect(data('<xml/>')).to eq({})
      end

      it 'ignores xml namespaces on the root element' do
        expect(data('<xml xmlns="http://xmlns.com"/>')).to eq({})
      end

      it 'ignores xml elements when the rules are empty' do
        rules['members'] = {}
        expect(data('<xml><foo>bar</foo></xml>')).to eq({})
      end

      describe 'structures' do

        it 'parses structure members' do
          rules['members'] = {
            'first' => { 'type' => 'string' },
            'last' => { 'type' => 'string' }
          }
          xml = <<-XML
            <xml>
              <first>abc</first>
              <last>xyz</last>
            </xml>
          XML
          expect(data(xml)).to eq(first: 'abc', last: 'xyz')
        end

      end

      describe 'non-flattened lists' do
      end

      describe 'flattened lists' do
      end

      describe 'non-flattened maps' do
      end

      describe 'flattened maps' do
      end

      describe 'booleans' do
      end

      describe 'timestamps' do
      end

      describe 'integers' do
      end

      describe 'floats' do
      end

      describe 'xmlnames' do
      end

      describe 'blobs' do
      end

      describe 'xml namespaces' do
      end

      describe 'parsing errors' do
      end

    end
  end
end
