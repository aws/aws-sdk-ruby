require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe ClientRequest do

        it 'passes options through by default' do
          req = ClientRequest.new(request: {
            'operation' => 'OperationName',
          })
          expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options)
          CODE
        end

        it 'can capture the response' do
          req = ClientRequest.new(request: {
            'operation' => 'OperationName',
          }, resp: true)
          expect(req.to_s).to eq(<<-CODE)
resp = @client.operation_name(options)
          CODE
        end

        describe 'merge vs deep_merge' do

          it 'uses merge with a single scalar param' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'Single',
                  'source' => 'string',
                  'value' => 'param',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(single: "param"))
            CODE
          end

          it 'uses deep merge with a single list param' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ItemIds[]',
                  'source' => 'string',
                  'value' => 'param',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(Aws::Util.deep_merge(options,
  item_ids: ["param"]
))
            CODE
          end

          it 'uses deep merge with a single nested scalar param' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'Nested.Single',
                  'source' => 'string',
                  'value' => 'param',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(Aws::Util.deep_merge(options,
  nested: {
    single: "param"
  }
))
            CODE
          end

        end

        describe 'param targets' do

          it 'supports top-level params' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'string',
                  'value' => 'value',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: "value"))
            CODE
          end

          it 'supports nested params' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'Nested.ParamA',
                  'source' => 'string',
                  'value' => 'value-a',
                },
                {
                  'target' => 'Nested.ParamB',
                  'source' => 'string',
                  'value' => 'value-b',
                },
                {
                  'target' => 'Other.Nested.Value',
                  'source' => 'string',
                  'value' => 'value-c',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(Aws::Util.deep_merge(options,
  nested: {
    param_a: "value-a",
    param_b: "value-b"
  },
  other: {
    nested: {
      value: "value-c"
    }
  }
))
            CODE
          end

          it 'supports indexed lists' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'Filters[0].Name',
                  'source' => 'string',
                  'value' => 'filter-name',
                },
                {
                  'target' => 'Filters[0].Values[0]',
                  'source' => 'string',
                  'value' => 'filter-value',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(Aws::Util.deep_merge(options,
  filters: [{
    name: "filter-name",
    values: ["filter-value"]
  }]
))
            CODE
          end

        end

        describe 'param sources' do

          it 'supports identifiers' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'identifier',
                  'name' => 'IdentifierName',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: @identifier_name))
            CODE
          end

          it 'supports data members' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'data',
                  'path' => 'MemberName',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: data.member_name))
            CODE
          end

          it 'supports data with nested paths' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'data',
                  'path' => 'Foo.Bar.Yuck',
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: data.foo.bar.yuck))
            CODE
          end

          it 'raises an error for more complex data paths' do
            expect {
              ClientRequest.new(request: {
                'operation' => 'OperationName',
                'params' => [
                  {
                    'target' => 'ParamName',
                    'source' => 'data',
                    'path' => 'Foo[].Bar.Yuck',
                  },
                ]
              })
            }.to raise_error(/unsupported path/)
          end

          it 'supports string literal params' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'string',
                  'value' => 'string-literal'
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: "string-literal"))
            CODE
          end

          it 'supports integer literal params' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'integer',
                  'value' => 123
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(param_name: 123))
            CODE
          end

          it 'supports boolean literal params' do
            req = ClientRequest.new(request: {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ParamName',
                  'source' => 'boolean',
                  'value' => true,
                },
                {
                  'target' => 'OtherParamName',
                  'source' => 'boolean',
                  'value' => false,
                },
              ]
            })
            expect(req.to_s).to eq(<<-CODE)
@client.operation_name(options.merge(
  param_name: true,
  other_param_name: false
))
            CODE
          end

        end
      end
    end
  end
end
