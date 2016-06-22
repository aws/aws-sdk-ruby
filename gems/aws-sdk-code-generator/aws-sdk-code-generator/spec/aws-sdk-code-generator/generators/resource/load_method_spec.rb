require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    module Resource
      describe LoadMethod do

        it 'supports resources that have not defined load' do
          m = LoadMethod.new(resource_name:'ResourceName', definition:nil)
          expect(m.to_s).to eq(<<-CODE)
# @raise [Errors::ResourceNotLoadable]
# @api private
def load
  msg = "#load is not implemented, data only available via enumeration"
  raise Errors::ResourceNotLoadable, msg
end
alias :reload :load
          CODE
        end

        it 'documents load operations' do
          m = LoadMethod.new(resource_name:'ResourceName', definition: {
            'request' => {
              'operation' => 'OperationName'
            },
            'path' => '@'
          })
          expect(SpecHelper.documentation(m)).to eq(<<-CODE)
# Loads, or reloads {#data} for the current {ResourceName}.
# Returns `self` making it possible to chain methods.
#
#     resource_name.reload.data
#
# @return [self]
          CODE
        end

        it 'supports load operations without params' do
          m = LoadMethod.new(resource_name:'ResourceName', definition: {
            'request' => {
              'operation' => 'LoadOperationName'
            },
            'path' => '@'
          })
          expect(SpecHelper.code(m)).to eq(<<-CODE)
def load
  resp = @client.load_operation_name
  @data = resp.data
  self
end
alias :reload :load
          CODE
        end

        it 'supports load operations with one request params' do
          m = LoadMethod.new(resource_name:'ResourceName', definition: {
            'request' => {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ResourceId',
                  'source' => 'identifier',
                  'name' => 'Id',
                }
              ]
            },
            'path' => '@'
          })
          expect(SpecHelper.code(m)).to eq(<<-CODE)
def load
  resp = @client.operation_name(resource_id: @id)
  @data = resp.data
  self
end
alias :reload :load
          CODE
        end

        it 'supports load operations with multiple request params' do
          m = LoadMethod.new(resource_name:'ResourceName', definition: {
            'request' => {
              'operation' => 'OperationName',
              'params' => [
                {
                  'target' => 'ResourceId',
                  'source' => 'identifier',
                  'name' => 'Id',
                },
                {
                  'target' => 'OtherResourceId',
                  'source' => 'identifier',
                  'name' => 'OtherId',
                }
              ]
            },
            'path' => 'Complex[0].Data.Path'
          })
          expect(SpecHelper.code(m)).to eq(<<-CODE)
def load
  resp = @client.operation_name(
    resource_id: @id,
    other_resource_id: @other_id
  )
  @data = resp.complex[0].data.path
  self
end
alias :reload :load
          CODE
        end

      end
    end
  end
end
