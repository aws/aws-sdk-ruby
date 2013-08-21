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
    describe Builder do

      let(:rules) {{
        'type' => 'structure',
        'xmlname' => 'xml',
        'members' => {},
      }}

      def xml(params)
        shape = Seahorse::Model::Shapes::Shape.from_hash(rules)
        Builder.new(shape).to_xml(params)
      end

      describe 'structures' do

        it 'returns an empty xml doc when there are no params' do
          expect(xml({})).to eq(<<-XML)
<xml/>
          XML
        end

        it 'omits members that are not present in the params' do
          rules['members'] = {
            'abc' => { 'type' => 'string' },
            'mno' => { 'type' => 'string' },
          }
          expect(xml({})).to eq(<<-XML)
<xml/>
          XML
        end

        it 'includes members that are present in the params' do
          rules['members'] = {
            'abc' => { 'type' => 'string' },
            'mno' => { 'type' => 'string' },
          }
          expect(xml(:mno => 'value')).to eq(<<-XML)
<xml>
  <mno>value</mno>
</xml>
          XML
        end

        it 'orders members by rule order, not param order' do
          rules['members'] = {
            'mno' => { 'type' => 'string' },
            'abc' => { 'type' => 'string' },
          }
          expect(xml(:abc => 'v2', :mno => 'v1')).to eq(<<-XML)
<xml>
  <mno>v1</mno>
  <abc>v2</abc>
</xml>
          XML
        end

        it 'serializes nested structures' do
          rules['members'] = {
            'name' => { 'type' => 'string' },
            'details' => {
              'type' => 'structure',
              'members' => {
                'size' => { 'type' => 'string' },
                'color' => { 'type' => 'string' },
              }
            },
          }
          params = {
            name: 'Name',
            details: {
              size: 'large',
              color: 'red',
            },
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <name>Name</name>
  <details>
    <size>large</size>
    <color>red</color>
  </details>
</xml>
          XML
        end

        it 'applies xml attribute members to the structure' do
          rules['members'] = {
            'config' => {
              'type' => 'structure',
              'members' => {
                'encoding' => {
                  'type' => 'string',
                  'xmlattribute' => true,
                  'xmlname' => 'encode',
                },
                'description' => { 'type' => 'string' },
              }
            }
          }
          params = {
            config: {
              encoding: 'base64',
              description: 'optional',
            },
          }
          expect(xml(params)).to eq(<<-XML)
<xml>
  <config encode="base64">
    <description>optional</description>
  </config>
</xml>
          XML
        end

      end

      describe 'non-flattened lists' do

        it 'serializes lists members as "member" by default' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'members' => { 'type' => 'string' }
            }
          }
          expect(xml(items: %w(abc xyz))).to eq(<<-XML)
<xml>
  <items>
    <member>abc</member>
    <member>xyz</member>
  </items>
</xml>
          XML
        end

        it 'applies xmlnames to the list wrapper and member entries' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'xmlname' => 'ItemList',
              'members' => { 'type' => 'string', 'xmlname' => 'Item' }
            }
          }
          expect(xml(items: %w(abc xyz))).to eq(<<-XML)
<xml>
  <ItemList>
    <Item>abc</Item>
    <Item>xyz</Item>
  </ItemList>
</xml>
          XML
        end

        it 'can serialize lists of complex types' do
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
          expect(xml(items: [{ name: 'abc' }, { name: 'mno' }])).to eq(<<-XML)
<xml>
  <items>
    <member>
      <name>abc</name>
    </member>
    <member>
      <name>mno</name>
    </member>
  </items>
</xml>
          XML
        end

      end

      describe 'flattened lists' do

        it 'serializes lists without a wrapping element' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'flattened' => true,
              'members' => { 'type' => 'string' }
            }
          }
          expect(xml(items: %w(abc mno xyz))).to eq(<<-XML)
<xml>
  <items>abc</items>
  <items>mno</items>
  <items>xyz</items>
</xml>
          XML
        end

        it 'applies xmlnames to the list elements' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'flattened' => true,
              'xmlname' => 'item',
              'members' => { 'type' => 'string' }
            }
          }
          expect(xml(items: %w(abc mno xyz))).to eq(<<-XML)
<xml>
  <item>abc</item>
  <item>mno</item>
  <item>xyz</item>
</xml>
          XML
        end

        it 'can serialize a list of complex types' do
          rules['members'] = {
            'items' => {
              'type' => 'list',
              'flattened' => true,
              'xmlname' => 'item',
              'members' => {
                'type' => 'structure',
                'members' => {
                  'name' => { 'type' => 'string' }
                }
              }
            }
          }
          expect(xml(items: [{ name: 'abc' }, { name: 'mno' }])).to eq(<<-XML)
<xml>
  <item>
    <name>abc</name>
  </item>
  <item>
    <name>mno</name>
  </item>
</xml>
          XML
        end

      end

      describe 'scalars' do
      end
    end
  end
end
