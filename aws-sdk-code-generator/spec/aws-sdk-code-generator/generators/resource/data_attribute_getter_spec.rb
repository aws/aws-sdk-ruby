require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe DataAttributeGetter do

        it 'accesses the #data to return the attribute' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'string'
                }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName' }
          )
          expect(SpecHelper.code(method)).to eq(<<-CODE)
def attribute_name
  data.attribute_name
end
          CODE
        end

        {
          'blob' => 'String',
          'byte' => 'Integer',
          'boolean' => 'Boolean',
          'character' => 'String',
          'double' => 'Float',
          'integer' => 'Integer',
          'long' => 'Integer',
          'string' => 'String',
          'timestamp' => 'Time',
        }.each do |shape, type|
          it "documents #{shape} scalar shapes as #{type}" do
            method = DataAttributeGetter.new(
              api: {
                'shapes' => {
                  'ShapeName' => {
                    'type' => 'string'
                  }
                }
              },
              member_name: 'AttributeName',
              member_ref: { 'shape' => 'ShapeName' }
            )
            expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# @return [String]
            CODE
          end
        end

        it 'documents list member shapes' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'list',
                  'member' => { 'shape' => 'ListMember' }
                },
                'ListMember' => { 'type' => 'integer' }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName' }
          )
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# @return [Array<Integer>]
          CODE
        end

        it 'documents map key and value shapes' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'map',
                  'key' => { 'shape' => 'String' },
                  'value' => { 'shape' => 'Timestamp' }
                },
                'String' => { 'type' => 'string' },
                'Timestamp' => { 'type' => 'timestamp' }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName' }
          )
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# @return [Hash<String,Time>]
          CODE
        end

        it 'documents structure types' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'structure',
                  'members' => {}
                }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName' }
          )
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# @return [Types::ShapeName]
          CODE
        end

        it 'applies member_ref docstrings' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'string',
                  'documentation' => 'shape-docs'
                }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName', 'documentation' => 'ref-docs' }
          )
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# ref-docs
# @return [String]
          CODE
        end

        it 'applies shapes docstrings' do
          method = DataAttributeGetter.new(
            api: {
              'shapes' => {
                'ShapeName' => {
                  'type' => 'string',
                  'documentation' => 'shape-docs'
                }
              }
            },
            member_name: 'AttributeName',
            member_ref: { 'shape' => 'ShapeName' }
          )
          expect(SpecHelper.documentation(method)).to eq(<<-CODE)
# shape-docs
# @return [String]
          CODE
        end

      end
    end
  end
end
